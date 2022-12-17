import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/models/questions_list.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:heocondihoc/screens/scorescreen.dart';

class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with
        SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Question> _questions = question
      .map(
        (question) => Question(
            id: question['id'],
            path: question['path'],
            question: question['question'],
            options: question['options'],
            answer_correct: question['answer_correct']),
      )
      .toList();
  List<Question> get questions => _questions;
  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  static int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;
  @override
  void onInit() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 15), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // Người dùng nhấn bất kì đáp án nào nó sẽ chạy
    _isAnswered = true;
    _correctAns = question.answer_correct;
    _selectedAns = selectedIndex;
    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // Dừng thời gian
    _animationController.stop();
    update();

    // Dừng 3s trước khi chuyển câu
    Future.delayed(const Duration(milliseconds: 600), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;

      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      // Khởi tạo lại bộ đếm thời gian
      _animationController.reset();

      // Hết giờ sẽ chuyển sang câu tiếp theo
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
