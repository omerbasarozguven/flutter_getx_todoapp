import 'package:flutter/material.dart';
import 'package:flutter_getx_todoapp/app/core/utils/extensions.dart';
import 'package:flutter_getx_todoapp/app/modules/home/controller.dart';
import 'package:flutter_getx_todoapp/app/modules/home/widgets/add_card.dart';
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
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                AddCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
