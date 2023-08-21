// ignore_for_file: await_only_futures
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

import 'package:to_do_list/application/model/task_model.dart';

class HomePageController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late CollectionReference collectionReference;

  RxList<TaskModel> taskList = RxList<TaskModel>([]);

  @override
  void onInit() async {
    super.onInit();
    final value = await firestore.collection('tasks').get();
    taskList.value =
        value.docs.map((e) => TaskModel.fromJson(e.data())).toList();
  }

  CollectionReference tasksD = FirebaseFirestore.instance.collection('users');

  void deleteTask(String taskId) async {
    await firestore.collection('tasks').doc(taskId).delete();
    taskList.removeWhere((value) => value.id == taskId);
  }
}
