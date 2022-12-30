import 'package:flutter/material.dart';
import '../base/base_view.dart';
import '../controller/summary_controller.dart';

class SummaryView extends BaseView<SummaryController> {
  const SummaryView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/background_DA.png'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/cup.png"),
                const SizedBox(
                  height: 20,
                ),
                Text(controller.section.name,
                    style: const TextStyle(fontSize: 50, color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "${controller.playRecord.scoreAchived} / ${controller.playRecord.totalScoreSection} điểm",
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: controller.onClickBackHome,
                    child: const Text("Quay về màn hình chính",
                        style: TextStyle(fontSize: 22, color: Colors.white)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
