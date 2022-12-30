import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import '../base/base_view.dart';
import '../components/bottombar.dart';
import '../components/color.dart';
import '../controller/profile_detail_controller.dart';

class ProfileDetailView extends BaseView<ProfileDetailController> {
  const ProfileDetailView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
              : Container(
                  decoration: background,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: BackButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BottomBar()));
                          },
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            const Gap(20),
                            const CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                radius: 60,
                                child: Icon(
                                  Icons.person,
                                  size: 100,
                                )),
                            const Gap(40),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 10, 30, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Tên người dùng:',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  const Gap(10),
                                  SizedBox(
                                    height: 40,
                                    child: TextField(
                                      controller: controller.controllerName,
                                      cursorHeight: 20,
                                      decoration: InputDecoration(
                                          //prefixText: '${loggedInUser.username}',
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  width: 1, color: myColor)),
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  const Gap(20),
                                  const Text('Email:',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: TextField(
                                      enabled: false,
                                      controller: controller.controllerEmail,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  width: 1, color: myColor)),
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                  const Gap(20),
                                  const Text('Tiểu sử:',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  const Gap(10),
                                  TextField(
                                    controller:
                                        controller.controllerDescription,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                width: 1, color: myColor)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                  const Gap(20),
                                  Container(
                                    alignment: Alignment.center,
                                    child: ElevatedButton(
                                        onPressed: () async {
                                          controller.onClickUpdateProfile();
                                        },
                                        child: const Text('Cập nhật',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ));
  }
}
