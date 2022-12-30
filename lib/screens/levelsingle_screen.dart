import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../base/base_view.dart';
import '../components/item.dart';
import '../controller/level_single_controller.dart';

class LevelSingleView extends BaseView<LevelSingleController> {
  const LevelSingleView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
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
                    children: const [
                      Text(
                        "Đang chuẩn bị dữ liệu",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      CircularProgressIndicator(),
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
                              image: AssetImage('assets/background_DA.png'))),
                    ),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.only(right: 10),
                          width: width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: (() => Navigator.pop(context)),
                                  icon: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                  // color: Colors.transparent,
                                ),
                                const ItemBar()
                              ]),
                        )),
                    Positioned(
                      top: height * 0.1,
                      child: SizedBox(
                        width: width,
                        height: height * 0.9,
                        child: controller.listSection.value.isEmpty
                            ? const Text("NOT HAVE DATA")
                            : GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemCount: controller.listSection.value.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return startSectionDialog(
                                                index, context);
                                          });
                                    },
                                    child: section(index),
                                  );
                                },
                              ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }

  AlertDialog startSectionDialog(int index, BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              controller.listSection.value[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
                "${controller.listSection.value[index].totalScore} điểm",
                style: TextStyle(color: Colors.blue[600], fontSize: 18)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text.rich(TextSpan(
                text: "Bạn sẽ có",
                style: TextStyle(color: Colors.black87, fontSize: 18),
                children: [
                  TextSpan(
                      text: " 30 giây ", style: TextStyle(color: Colors.red)),
                  TextSpan(text: "cho mỗi câu hỏi.")
                ])),
          ),
          // Text(
          //     "${controller.listSection.value[index].name}: ${controller.listSection.value[index].totalScore} điểm",
          //     style: TextStyle(color: Colors.blue[600], fontSize: 18)),
          const Text(
            "Bạn sẵn sàng vào ải chứ?",
            style: TextStyle(color: Colors.black87, fontSize: 18),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // backgroundColor: Colors.white.,
      actions: [
        TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Hủy")),
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {
            Navigator.pop(context);
            controller.onClickStartPlay(index);
          },
          child: const Text("OK"),
        )
      ],
    );
  }

  Padding section(int index) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: CircleAvatar(
        backgroundColor: Colors.white38,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              controller.listSection.value[index].name,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
