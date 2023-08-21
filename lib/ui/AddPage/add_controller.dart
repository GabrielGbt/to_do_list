import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddController extends GetxController {
  final titleController = TextEditingController();
  final descrController = TextEditingController();

  RxString textValue = ''.obs;
  RxString textValue1 = ''.obs;

  ButtonStyle style = ElevatedButton.styleFrom(backgroundColor: Colors.black);

  Future newTask({required task}) async {
    final newTask = FirebaseFirestore.instance.collection('tasks').doc();
    //    nTask = recebe nova task                       tasks == nome da coleção das tasks no firebase

    task.id = newTask.id; //creating id for task
    final json = task.toJson(); //taking task as json
    await newTask.set(json); //returning json with task
  }
}
