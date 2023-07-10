import 'package:flutter_getx_todoapp/app/data/services/storage/repository.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});
}
