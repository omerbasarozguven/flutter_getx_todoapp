import 'package:flutter_getx_todoapp/app/data/models/task.dart';
import 'package:flutter_getx_todoapp/app/data/services/storage/repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});

  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTasks());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }
}
