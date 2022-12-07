import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/question_controller.dart';
import 'package:heocondihoc/models/questions_list.dart';

class QuestionCard extends StatefulWidget {
  QuestionCard({
    required this.question,
  });

  final Question question;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool isSelectedA = true;
  bool isSelectedB = true;
  bool isSelectedC = true;
  bool isSelectedD = true;
  changeSelectedA() {
    if (mounted) {
      setState(() {
        isSelectedA = !isSelectedA;
      });
    }
  }

  changeSelectedB() {
    if (mounted) {
      setState(() {
        isSelectedB = !isSelectedB;
      });
    }
  }

  changeSelectedC() {
    if (mounted) {
      setState(() {
        isSelectedC = !isSelectedC;
      });
    }
  }

  changeSelectedD() {
    if (mounted) {
      setState(() {
        isSelectedD = !isSelectedD;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Container(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('assets/congcusat.jpg'),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(10),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 226, 219),
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                widget.question.question,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: isSelectedA ? Colors.white : Colors.green,
                      onPrimary: isSelectedA ? Colors.black : Colors.white),
                  onPressed: (() {
                    changeSelectedA();
                    _controller.checkAns(widget.question, 0);
                  }),
                  child: Text('A. ${widget.question.options[0]}')),
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: isSelectedB ? Colors.white : Colors.green,
                      onPrimary: isSelectedB ? Colors.black : Colors.white),
                  onPressed: (() {
                    changeSelectedB();
                    _controller.checkAns(widget.question, 1);
                  }),
                  child: Text('B. ${widget.question.options[1]}')),
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isSelectedC ? Colors.white : Colors.green,
                    onPrimary: isSelectedC ? Colors.black : Colors.white,
                  ),
                  onPressed: (() {
                    changeSelectedC();
                    _controller.checkAns(widget.question, 2);
                  }),
                  child: Text('C. ${widget.question.options[2]}')),
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: isSelectedD ? Colors.white : Colors.green,
                      onPrimary: isSelectedD ? Colors.black : Colors.white),
                  onPressed: (() {
                    changeSelectedD();
                    _controller.checkAns(widget.question, 3);
                  }),
                  child: Text('D. ${widget.question.options[3]}')),
            ),
            Spacer(
              flex: 3,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    _controller.nextQuestion();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bỏ qua câu hỏi'),
                      Container(
                        child: Row(
                          children: [Text('20'), Icon(Icons.money)],
                        ),
                      )
                    ],
                  )),
            )
          ])),
    );
  }
}
