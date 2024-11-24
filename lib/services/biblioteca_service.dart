import '../models/livro.dart';
import '../utils/validadores.dart';

class BibliotecaService {
  final List<Livro> _livros = [];
  final Validadores _validadores = Validadores();

  // Método para cadastrar um novo livro
  bool cadastrarLivro(Livro livro) {
    if (!_validadores.validarLivro(livro)) {
      return false;
    }

    if (_livros.any((l) => l.id == livro.id)) {
      print('Erro: Já existe um livro com o ID ${livro.id}');
      return false;
    }
    
    _livros.add(livro);
    print('Livro "${livro.titulo}" cadastrado com sucesso!');
    return true;
  }

  // Método para remover livro por ID
  bool removerLivroPorId(String id) {
    final livroIndex = _livros.indexWhere((l) => l.id == id);
    if (livroIndex == -1) {
      print('Erro: Livro com ID $id não encontrado');
      return false;
    }

    final livroRemovido = _livros.removeAt(livroIndex);
    print('Livro "${livroRemovido.titulo}" removido com sucesso!');
    return true;
  }

  // Método para remover livro por título
  bool removerLivroPorTitulo(String titulo) {
    final livroIndex = _livros.indexWhere(
        (l) => l.titulo.toLowerCase() == titulo.toLowerCase());
    if (livroIndex == -1) {
      print('Erro: Livro com título "$titulo" não encontrado');
      return false;
    }

    final livroRemovido = _livros.removeAt(livroIndex);
    print('Livro "${livroRemovido.titulo}" removido com sucesso!');
    return true;
  }

  // Método para listar todos os livros
  void listarLivros() {
    if (_livros.isEmpty) {
      print('A biblioteca está vazia!');
      return;
    }

    print('\n=== LIVROS DISPONÍVEIS ===');
    for (var i = 0; i < _livros.length; i++) {
      print('Livro ${i + 1}:');
      print(_livros[i]);
    }
    print('========================\n');
  }

  // Getter para quantidade de livros
  int get quantidadeLivros => _livros.length;

  // Método para buscar por autor
  List<Livro> buscarPorAutor(String autor) {
    return _livros
        .where((l) => l.autor.toLowerCase().contains(autor.toLowerCase()))
        .toList();
  }

  // Método para buscar por gênero
  List<Livro> buscarPorGenero(String genero) {
    return _livros
        .where((l) => l.genero.toLowerCase() == genero.toLowerCase())
        .toList();
  }
}