import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Container(
        decoration: background,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Spacer(flex: 3),
                Text(
                  "Score",
                ),
                Spacer(),
                Text(
                  "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                ),
                Spacer(flex: 3),
              ],
            )
          ],
        ),
      ),
    );
  }
}