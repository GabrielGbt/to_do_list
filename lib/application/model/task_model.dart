import 'package:cloud_firestore/cloud_firestore.dart';

class TaskModel {
  String? id;
  String? title;
  String? description;
  TaskModel({
    this.id,
    required this.title,
    required this.description,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
      };

  /* static TaskModel fromJson(Map<String, dynamic> json) => TaskModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
      ); */

  /* TaskModel.fromJson(DocumentSnapshot data) {
    id = data.id;
    title = data["title"];
    description = data["description"];
  } */
}
