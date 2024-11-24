class Livro {
  final String id;
  final String titulo;
  final String autor;
  final int anoPublicacao;
  final String genero;

  Livro({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
  });

  // Método para criar uma cópia do livro com possíveis alterações
  Livro copyWith({
    String? id,
    String? titulo,
    String? autor,
    int? anoPublicacao,
    String? genero,
  }) {
    return Livro(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      autor: autor ?? this.autor,
      anoPublicacao: anoPublicacao ?? this.anoPublicacao,
      genero: genero ?? this.genero,
    );
  }

  @override
  String toString() {
    return '''
    ID: $id
    Título: $titulo
    Autor: $autor
    Ano de Publicação: $anoPublicacao
    Gênero: $genero
    ''';
  }
}