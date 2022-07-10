import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx/controller/increment_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controller incrementController = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Obx(() => Text("${incrementController.count}")),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            incrementController.increment();
          },
          child: Icon(Icons.add_circle_outline),
        ),
      ),
    );
  }
}
