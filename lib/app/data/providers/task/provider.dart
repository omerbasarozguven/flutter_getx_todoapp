import 'dart:convert';

import 'package:flutter_getx_todoapp/app/core/utils/keys.dart';
import 'package:flutter_getx_todoapp/app/data/models/task.dart';
import 'package:flutter_getx_todoapp/app/data/services/storage/services.dart';
import 'package:get/get.dart';

class TaskProvider {
  final _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
