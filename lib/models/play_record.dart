import 'package:cloud_firestore/cloud_firestore.dart';

class PlayRecord {
  String id;
  DateTime dateStart;
  int scoreAchived;
  int totalScoreSection;
  PlayRecord(
      {this.id = "",
      DateTime? dateStart,
      this.scoreAchived = 0,
      this.totalScoreSection = 0})
      : dateStart = dateStart ?? DateTime.now();
  factory PlayRecord.fromData(QueryDocumentSnapshot<Object?> doc) => PlayRecord(
      id: doc.id,
      dateStart: doc["date_start"],
      scoreAchived: doc["scoreAchived"],
      totalScoreSection: doc["totalScoreSection"]);
}
