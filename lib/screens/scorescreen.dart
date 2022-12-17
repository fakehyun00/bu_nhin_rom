import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/question_controller.dart';
import 'package:heocondihoc/screens/level_single.dart';
import 'package:heocondihoc/screens/match_screen.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      body: Container(
        decoration: background,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                const Spacer(flex: 3),
                Text(
                  'Bạn trả lời đúng ${qnController.numOfCorrectAns} câu hỏi!',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                const Text("Score",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                const Spacer(),
                Text(
                    "${qnController.numOfCorrectAns * 10}/${qnController.questions.length * 10}",
                    style: const TextStyle(
                      fontSize: 18,
                    )),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red[300]),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomBar()));
                        },
                        child: const Text('Trở về')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LevelScreen()));
                        },
                        child: const Text('Tiếp tục'))
                  ],
                ),
                const Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
