import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/format_timer.dart';
import '../base/base_view.dart';
import '../controller/play_screen_controller.dart';

class PlayScreenView extends BaseView<PlayScreenController> {
  PlayScreenView({Key? key}) : super(key: key);
  List<String> alphabet = ["A", "B", "C", "D"];
  @override
  Widget buildView(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Obx(
              () => controller.isLoading.isTrue
                  ? const SizedBox.shrink()
                  : Container(
                      height: height * 0.065,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: width,
                      child: Obx(
                        () => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  controller.disableButtonNext.isFalse
                                      ? Colors.blue
                                      : Colors.grey),
                          child: Text(controller.index.value + 1 ==
                                  controller.listQuestion.value.length
                              ? "Kết thúc"
                              : "Kế tiếp"),
                          onPressed: () async {
                            await controller.onClickNextQuestion();
                          },
                        ),
                      )),
            ),
            body: Obx(
              () => controller.isLoading.isTrue
                  ? Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/background_DA.png'))),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.textLoading.value,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 30),
                          ),
                          const CircularProgressIndicator(),
                        ],
                      )),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage('assets/background_DA.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              header(width, context),
                              processBar(width),
                              contentQuestion(height, width),
                              bodyAnswer(height, width),
                            ],
                          ),
                        ),
                      ],
                    ),
            )),
      ),
    );
  }

  Widget processBar(double width) {
    return Obx(() => Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.7,
                child: LinearProgressIndicator(
                  value: (controller.index.value + 1) /
                      controller.listQuestion.value.length,
                  minHeight: 8,
                ),
              ),
              // Icon(Icons.)
              Text(
                  "${controller.index.value + 1}/${controller.listQuestion.length}",
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }

  Widget bodyAnswer(double height, double width) {
    return SizedBox(
      height: height * 0.6,
      width: width,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: controller.currentQuestion.value.listAnswer.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return Obx(
            () => Container(
              // p
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: width * 0.8,
              height: height * 0.1,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: controller.currentQuestion.value.listAnswer[index].id ==
                        controller.customerAnser.value.id
                    ? Colors.blue[100]
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  controller.onSelectedAnswer(index);
                },
                child: Row(
                  children: [
                    Expanded(
                        child: Text(alphabet[index],
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black))),
                    Expanded(
                      flex: 3,
                      child: Text(
                        controller
                            .currentQuestion.value.listAnswer[index].content
                            .toString(),
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget contentQuestion(double height, double width) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      height: height * 0.15,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Obx(
        () => Text(controller.currentQuestion.value.content,
            maxLines: 3,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget header(double width, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //
          children: [
            IconButton(
              onPressed: (() => Navigator.pop(context)),
              icon: const Icon(
                Icons.close_rounded,
                color: Colors.white,
              ),
              // color: Colors.transparent,
            ),
            Text(controller.section.name,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),

            Obx(() => Text(
                Duration(seconds: controller.timerCount.value)
                    .toMinutesSeconds(),
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)))
            // TimeCountdown()
          ]),
    );
  }
}
