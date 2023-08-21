// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/application/model/task_model.dart';
import 'package:to_do_list/ui/AddPage/add_controller.dart';

class AddPage extends GetView<AddController> {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('New'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Text('Challenge yourself'),
              const SizedBox(
                height: 45,
              ),
              TextField(
                onChanged: (value) {
                  controller.textValue.value = value;
                },
                controller: controller.titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Task title',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  controller.textValue1.value = value;
                },
                controller: controller.descrController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Hard Challenge',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() {
                final isEmpty = controller.textValue.isEmpty;
                final isEmpty1 = controller.textValue1.isEmpty;
                return ElevatedButton(
                  style: controller.style,
                  child: const Text('Create'),
                  onPressed: () {
                    if (isEmpty && isEmpty1) {
                      Null;
                    } else {
                      final task = TaskModel(
                        title: controller.titleController.text,
                        description: controller.descrController.text,
                      );
                      controller.newTask(task: task);
                      Get.offAllNamed('/');
                    }
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
