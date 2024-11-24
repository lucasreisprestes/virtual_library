# Biblioteca Virtual

Sistema simples de gerenciamento de biblioteca desenvolvido em Dart.

## Funcionalidades

- Cadastrar livros
- Remover livros
- Listar acervo
- Buscar por autor
- Buscar por gênero

## Estrutura do Projeto

```
biblioteca_virtual/
  ├── lib/
  │   ├── models/
  │   ├── services/
  │   └── utils/
  └── main.dart
```

## Como Usar

1. Instale o Dart SDK
2. Clone o projeto
3. Execute:

```bash
# Rodar o programa
dart run main.dart

```

## Exemplo de Uso

```dart
final biblioteca = BibliotecaService();

// Cadastrar livro
biblioteca.cadastrarLivro(
  Livro(
    id: '1',
    titulo: 'Dom Casmurro',
    autor: 'Machado de Assis',
    anoPublicacao: 1899,
    genero: 'Romance'
  )
);

// Listar livros
biblioteca.listarLivros();

// Buscar por autor
var livros = biblioteca.buscarPorAutor('Machado de Assis');
```
