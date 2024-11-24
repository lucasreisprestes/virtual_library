import 'lib/services/biblioteca_service.dart';
import 'lib/models/livro.dart';

void main() {
  final biblioteca = BibliotecaService();

  // Exemplo de uso da biblioteca
  print('=== BIBLIOTECA VIRTUAL ===\n');

  // Cadastrando alguns livros
  biblioteca.cadastrarLivro(
    Livro(
      id: '1',
      titulo: 'Dom Casmurro',
      autor: 'Machado de Assis',
      anoPublicacao: 1899,
      genero: 'Romance'
    )
  );

  biblioteca.cadastrarLivro(
    Livro(
      id: '2',
      titulo: 'O Senhor dos Anéis',
      autor: 'J.R.R. Tolkien',
      anoPublicacao: 1954,
      genero: 'Fantasia'
    )
  );

  // Listando os livros cadastrados
  biblioteca.listarLivros();

  // Buscando livros por autor
  print('Buscando livros de Machado de Assis:');
  var livrosMachado = biblioteca.buscarPorAutor('Machado de Assis');
  for (var livro in livrosMachado) {
    print(livro);
  }

  // Removendo um livro
  biblioteca.removerLivroPorId('1');

  // Listando novamente após remoção
  biblioteca.listarLivros();
}