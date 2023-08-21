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
        foregroundColor: Colors.black,
        onPressed: () {
          Get.toNamed('/add');
        },
        backgroundColor: Colors.blueAccent.withOpacity(0.8),
        child: const Icon(Icons.add), // Background color of the FAB
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: controller.taskList.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Dismissible(
                        background: Container(
                          color: Colors.red,
                          child: const Align(
                            alignment: Alignment(0.9, 0),
                            child: Icon(Icons.delete_forever_outlined),
                          ),
                        ),
                        key: Key('${controller.taskList[index].id}'),
                        onDismissed: (direction) {
                          controller
                              .deleteTask('${controller.taskList[index].id}');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: Get.width,
                              child: ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black)),
                                onPressed: null,
                                child: ListTile(
                                  title: Text(
                                    controller.taskList[index].title ?? ' ',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    controller.taskList[index].description ??
                                        ' ',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
