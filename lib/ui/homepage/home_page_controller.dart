import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

import 'package:to_do_list/application/model/task_model.dart';

class HomePageController extends GetxController {
  /* final databaseRef = FirebaseDatabase.instance.ref();

  // Define an observable list of strings to hold the data
  var dataList = <String>[].obs;

  Stream<List<TaskModel>> readTask() => FirebaseFirestore.instance
      .collection('tasks')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => TaskModel.fromJson(doc.data())).toList());

  Widget buildTask(TaskModel task) => ListTile(
        title: Text(task.title as String),
        subtitle: Text(task.description as String),
      );
   */

  /* Future<void> fetchData() async {
    DataSnapshot snapshot =
        (await firebaseDatalist.child('tasks').once()) as DataSnapshot;
    Map<dynamic, dynamic> values = snapshot.value.toMap();
    data.value = data
        .map((doc) => TaskModel.fromJson(doc.data))
        .cast<Map<String, dynamic>>()
        .toList();
  } */

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late CollectionReference collectionReference;

  RxList<TaskModel> taskList = RxList<TaskModel>([]);

  @override
  void onInit() {
    super.onInit();
    collectionReference = firestore.collection('tasks');
    //taskList.bindStream(getAllTasks());
  }

  /* Stream<List<TaskModel>> getAllTasks() =>
      collectionReference.snapshots().map((query) => query.docs
          .map(
            (item) => TaskModel.fromJson(item),
          )
          .toList()); */
}
