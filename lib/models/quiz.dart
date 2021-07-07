class Quiz {
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': [
        {'texto': 'branco', 'nota': 5},
        {'texto': 'rosa', 'nota': 10},
        {'texto': 'preto', 'nota': 15},
        {'texto': 'vermelho', 'nota': 20},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': [
        {'texto': 'cachorro', 'nota': 20},
        {'texto': 'gato', 'nota': 15},
        {'texto': 'passarinho', 'nota': 10},
        {'texto': 'tartaruga', 'nota': 5},
      ],
    },
    {
      'texto': 'Qual seu mês favorito?',
      'resposta': [
        {'texto': 'janeiro', 'nota': 5},
        {'texto': 'julho', 'nota': 15},
        {'texto': 'outubro', 'nota': 20},
        {'texto': 'dezembro', 'nota': 10},
      ],
    },
  ];

  List<Map<String, Object>> getQuiz() {
    return this._perguntas;
  }
}
