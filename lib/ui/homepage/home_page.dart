import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/ui/homepage/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/addp');
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add), // Background color of the FAB
      ),
      body: const Center(),
      /* Obx(
        () => ListView.builder(
          itemCount: controller.taskList.length,
          itemBuilder: (context, index) => Card(
            color: Colors.black,
            child: ListTile(
              title: Text(controller.taskList[index].title!
                  .substring(0, 1)
                  .capitalize!),
              subtitle: Text(controller.taskList[index].description!
                  .substring(0, 1)
                  .capitalize!),
            ),
          ),
        ),
      ), */
    );
  }
}
