import 'package:cloud_firestore/cloud_firestore.dart';
import 'answer.dart';

class QuestionData {
  String id;
  String content;
  int score;
  List<Answer> listAnswer;
  QuestionData(
      {this.id = "",
      this.content = "",
      this.score = 0,
      List<Answer>? listAnswer})
      : listAnswer = listAnswer ?? [];
  factory QuestionData.fromData(QueryDocumentSnapshot<Object?> doc) {
    return QuestionData(
      id: doc.id,
      content: doc["content"],
      score: doc["score"],
    );
  }
}
