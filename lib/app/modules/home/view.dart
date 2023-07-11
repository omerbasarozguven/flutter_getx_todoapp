import 'package:flutter/material.dart';
import 'package:flutter_getx_todoapp/app/core/utils/extensions.dart';
import 'package:flutter_getx_todoapp/app/data/models/task.dart';
import 'package:flutter_getx_todoapp/app/modules/home/controller.dart';
import 'package:flutter_getx_todoapp/app/modules/home/widgets/add_card.dart';
import 'package:flutter_getx_todoapp/app/modules/home/widgets/task_card.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: TextStyle(
                  fontSize: 4.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks
                      .map((element) => TaskCard(task: element))
                      .toList(),
                  AddCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
