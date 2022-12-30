import 'package:cloud_firestore/cloud_firestore.dart';

class Answer {
  String id;
  String content;
  bool status;
  Answer({this.id = "", this.content = "", this.status = false});
  factory Answer.fromData(QueryDocumentSnapshot<Object?> doc) =>
      Answer(id: doc.id, content: doc["content"], status: doc["status"]);
}
