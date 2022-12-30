import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../services/database.dart';
import '../base/base_controller.dart';
import '../models/answer.dart';
import '../models/play_record.dart';
import '../models/question.dart';
import '../models/section.dart';

class PlayScreenController extends BaseController {
  //TODO: Implement PlayScreenController

  final Section section;

  Rx<bool> isLoading = true.obs;
  Rx<bool> disableButtonNext = true.obs;
  PlayScreenController({required this.section});

  Rx<int> index = 0.obs;
  RxList<QuestionData> listQuestion = <QuestionData>[].obs;
  RxList<Answer> listAnswer = <Answer>[].obs;
  Rx<Answer> customerAnser = Answer().obs;
  int totalScore = 0;
  Rx<QuestionData> currentQuestion = QuestionData().obs;
  Rx<int> timerCount = 30.obs;
  late Timer timer;
  PlayRecord playRecord = PlayRecord(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      dateStart: DateTime.now());
  Rx<String> textLoading = "Đang chuẩn bị dữ liêu".obs;
  @override
  void onInit() async {
    super.onInit();

//lắng nghe dữ liệu thay đổi và xử lý khi biến thay đổi
    ever(customerAnser, (_) {
      if (customerAnser.value.id == "") {
        disableButtonNext(true);
      } else {
        disableButtonNext(false);
      }
    });

    playRecord.totalScoreSection = section.totalScore;
    playRecord.scoreAchived = section.totalScore;
    await getListQuestion(section.id);
    if (listQuestion.isNotEmpty) {
      currentQuestion.value = listQuestion.first;
    }
    isLoading(false);
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (a) {
        timerCount.value--;
        //print(timerCount.value);
        if (timerCount.value == 0) {
          onClickNextQuestion();
        }
      },
    );
  }

  @override
  void onClose() {
    timer.cancel();
  }

  getListQuestion(String idSection) async {
    listQuestion.value = await DataBaseMethod.instance.getQuestion(idSection);
    print("listquesrtion${listQuestion.length}");
  }

  nextQuestion(int index) async {
    if (index + 1 != listQuestion.value.length) {
      currentQuestion.value = listQuestion.value[index + 1];
    } else {
      textLoading("Đang tổng kết");
      isLoading(true);
      User? user = FirebaseAuth.instance.currentUser;
      await postData(section.id, user!.uid, playRecord);
      await updateBestScore(section.id, user.uid);
      Get.offNamed(Routes.SUMMARY, arguments: [playRecord, section]);
    }
  }

  onClickNextQuestion() async {
    if (disableButtonNext.isFalse || timerCount.value <= 0) {
      timer.cancel();
      timerCount(30);
      calculateScore();
      customerAnser.value = Answer();
      await nextQuestion(index.value);
      if (index.value < listQuestion.length) {
        index.value++;
        countDown();
      }
    }
  }

  calculateScore() {
    if (customerAnser.value.status != true && playRecord.scoreAchived > 0) {
      playRecord.scoreAchived -= listQuestion.value[index.value].score;

      if (playRecord.scoreAchived <= 0) {
        playRecord.scoreAchived = 0;
      }
    }
  }

  onSelectedAnswer(int index) {
    customerAnser.value = currentQuestion.value.listAnswer[index];
  }

  countDown() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        timerCount.value--;
        //print(timerCount.value);
        if (timerCount.value == 0) {
          onClickNextQuestion();
        }
      },
    );
  }

  postData(String idSection, String idUser, PlayRecord playRecord) async {
    await DataBaseMethod.instance
        .createPlayRecord(idSection, idUser, playRecord);
  }

  updateBestScore(String idSection, String idUser) async {
    int maxScore =
        await DataBaseMethod.instance.getBestRecord(idUser, idSection);
    await DataBaseMethod.instance.updateBestScore(idSection, idUser, maxScore);
  }
}
