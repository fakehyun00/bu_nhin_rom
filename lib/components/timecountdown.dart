import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:heocondihoc/models/question_controller.dart';

class TimeCountdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              Positioned.fill(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${(controller.animation.value * 30).round()} giây',
                        style: const TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
