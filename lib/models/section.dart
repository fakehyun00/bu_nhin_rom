import 'package:cloud_firestore/cloud_firestore.dart';

class Section {
  String id;
  String name;
  int totalScore;
  Section({this.id = "", this.name = "", this.totalScore = 0});
  factory Section.fromData(QueryDocumentSnapshot<Object?> doc) =>
      Section(id: doc.id, name: doc["Name"], totalScore: doc["total_score"]);
}
