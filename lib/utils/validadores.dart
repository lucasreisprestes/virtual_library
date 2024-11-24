import '../models/livro.dart';

class Validadores {
  bool validarLivro(Livro livro) {
    if (livro.titulo.isEmpty) {
      print('Erro: O título não pode estar vazio');
      return false;
    }

    if (livro.autor.isEmpty) {
      print('Erro: O autor não pode estar vazio');
      return false;
    }

    if (livro.anoPublicacao > DateTime.now().year) {
      print('Erro: O ano de publicação não pode ser futuro');
      return false;
    }

    if (livro.anoPublicacao < 0) {
      print('Erro: O ano de publicação não pode ser negativo');
      return false;
    }

    return true;
  }
}