class GoodManners{
  String question;
  bool isThisGoodManners = false;
  String RodrigoBot = 'RodrigoBot:\n';
  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('Ola') ||
        question.contains('Oi') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('FÉ')) {
      isThisGoodManners = true;
    }

    return isThisGoodManners;
  }
}