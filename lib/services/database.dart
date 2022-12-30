import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/answer.dart';
import '../models/play_record.dart';
import '../models/question.dart';
import '../models/section.dart';

class DataBaseMethod {
  DataBaseMethod._privateConstructor();

  static final DataBaseMethod _instance = DataBaseMethod._privateConstructor();

  static DataBaseMethod get instance => _instance;

//Lấy danh sách các Ải
  Future<List<Section>> getSections() async {
    try {
      List<Section> listResult = [];
      Section section;
      await FirebaseFirestore.instance
          .collection('quizs')
          .get()
          .then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          if (doc.data().toString().contains("Name")) {
            section = Section.fromData(doc);
            listResult.add(section);
          }
        }
      });
      return Future<List<Section>>.value(listResult);
    } catch (e) {
      print("getSections$e");
      return Future<List<Section>>.value([]);
    }
  }

  //Lấy danh sách các Ải
  Future<List<QuestionData>> getQuestion(String idSection) async {
    try {
      QuestionData question;
      Answer answer;
      List<QuestionData> listResult = [];
      await FirebaseFirestore.instance
          .collection('quizs/$idSection/questions')
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var doc in querySnapshot.docs) {
          if (doc.data().toString().contains("content")) {
            question = QuestionData.fromData(doc);

            await FirebaseFirestore.instance
                .collection('quizs/$idSection/questions/${doc.id}/answer')
                .get()
                .then((QuerySnapshot querySnapshot) {
              for (var doc in querySnapshot.docs) {
                if (doc.data().toString().contains("content")) {
                  answer = Answer.fromData(doc);
                  question.listAnswer.add(answer);
                }
              }
            });
            listResult.add(question);
          }
        }
      });
      return Future<List<QuestionData>>.value(listResult);
    } catch (e) {
      print("ssss$e");
      return Future<List<QuestionData>>.value([]);
    }
  }

  Future<void> updateBestScore(
      String idSection, String idUser, int maxScore) async {
    await FirebaseFirestore.instance
        .collection("play_record/$idUser/section/")
        .doc(idSection)
        .set({"diemcaonhat": maxScore});
  }

  Future<void> createPlayRecord(
      String idSection, String idUser, PlayRecord record) async {
    await FirebaseFirestore.instance
        .collection("play_record/$idUser/section/$idSection/records")
        .doc(record.id)
        .set({
      "date_start": record.dateStart,
      "scoreAchived": record.scoreAchived,
      "totalScoreSection": record.totalScoreSection
    });
  }

  Future<int> getBestRecord(String idUser, String idSection) async {
    var a = await FirebaseFirestore.instance
        .collection("play_record/$idUser/section/$idSection/records")
        .orderBy("scoreAchived", descending: true)
        .get();
    int maxScore = a.docs[0].data()["scoreAchived"];
    print(a.docs[0].data()["scoreAchived"]);
    return maxScore;
  }

  Future<bool> updateProfile(
      String idUser, String description, String userName) async {
    try {
      if (idUser.isEmpty) {
        return Future<bool>.value(false);
      }
      await FirebaseFirestore.instance
          .collection("users/")
          .doc(idUser)
          .update({"description": description, "username": userName});
      return Future<bool>.value(true);
    } catch (e) {
      return Future<bool>.value(false);
    }
  }
}
