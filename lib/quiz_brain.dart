import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'apakah capung beracun', questionAnswer: false),
    Question(questionText: 'apakah naga itu nyata', questionAnswer: false),
    Question(
        questionText: 'apakah ikan bisa hidup didarat', questionAnswer: false),
    Question(questionText: 'apakah burung menyusui', questionAnswer: false),
    Question(
        questionText: 'apakah lumba lumba menggunakan insang',
        questionAnswer: false),
    Question(questionText: 'apakah ayam menyusui', questionAnswer: false),
    Question(questionText: 'apakah ayam bertelur', questionAnswer: true),
    Question(questionText: 'apakah burung bisa terbang', questionAnswer: true),
    Question(
        questionText: 'apakah ikan bernafas menggunakan insang',
        questionAnswer: true),
    Question(questionText: 'apakah ayam menyusui', questionAnswer: false),
    Question(questionText: 'apakah burung bertelur', questionAnswer: true),
    Question(questionText: 'apakah cicak merayap', questionAnswer: true),
    Question(questionText: 'apakah cicak bisa terbang', questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - create isFinished method that checks the last questions.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Menghitung jumlah pertanyaan
  int getTotalQuestions() {
    return _questionBank.length;
  }

  //TODO: Step 4 Part B - Create a reset() method that sets the questionNumber back to 0
  void reset() {
    _questionNumber = 0;
  }
}
