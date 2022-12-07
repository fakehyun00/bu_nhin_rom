import 'package:flutter/material.dart';
import 'package:heocondihoc/components/questioncard.dart';
import 'package:heocondihoc/components/timecountdown.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/question_controller.dart';
import 'package:get/get.dart';

class SingleMatch extends StatefulWidget {
  const SingleMatch({super.key});

  @override
  State<SingleMatch> createState() => _SingleMatchState();
}

class _SingleMatchState extends State<SingleMatch> {
  @override
  Widget build(BuildContext context) {

    QuestionController _questionController = Get.put(QuestionController());

    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      decoration: background,

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [BackButton(), Icon(Icons.pause)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 8,
                  child: Obx(
                    () => Text.rich(TextSpan(
                        text:
                            'Câu: ${_questionController.questionNumber.value}',
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: '/${_questionController.questions.length}',
                              style: TextStyle(fontSize: 20))
                        ])),
                  )
                  // Text(
                  //   'Câu: ${_questionController.questionNumber.value}/${_questionController.questions.length}',
                  //   style: TextStyle(fontSize: 20),
                  // ),
                  ),
              Expanded(flex: 2, child: TimeCountdown()),
            ],
          ),
          Expanded(
            child: PageView.builder(
              // Ngăn việc lướt giữa các Câu
              physics: const NeverScrollableScrollPhysics(),
              controller: _questionController.pageController,
              onPageChanged: _questionController.updateTheQnNum,
              itemCount: _questionController.questions.length,
              itemBuilder: (context, index) =>
                  QuestionCard(question: _questionController.questions[index]),
            ),
          ),
        ],
      ),

    ));
  }
}
