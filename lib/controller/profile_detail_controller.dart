import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:heocondihoc/base/base_controller.dart';
import 'package:heocondihoc/services/database.dart';
import 'package:heocondihoc/models/users_model.dart';

class ProfileDetailController extends BaseController {
  //TODO: Implement ProfileDetailController
  Rx<bool> isLoading = true.obs;
  User? user = FirebaseAuth.instance.currentUser;
  Rx<UserModel> profileUser = UserModel().obs;
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    await getData();
    isLoading(false);
  }

  getData() async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      profileUser.value = UserModel.fromMap(value.data());
    });

    controllerName.text = profileUser.value.username ?? "";
    controllerDescription.text = profileUser.value.description ?? "";
    controllerEmail.text = profileUser.value.email ?? "";
  }

  onClickUpdateProfile() async {
    bool check = await DataBaseMethod.instance.updateProfile(
        profileUser.value.uid!,
        controllerDescription.text,
        controllerName.text);
    if (check) {
      Fluttertoast.showToast(msg: "Cập nhật thành công");
    } else {
      Fluttertoast.showToast(msg: "Cập nhật thất bại");
    }
  }
}
