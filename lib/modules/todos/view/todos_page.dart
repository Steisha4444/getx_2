import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/todos/controller/todos_controller.dart';
import 'package:getx_test/modules/todos/view/todos_form.dart';
import 'package:getx_test/modules/todos/view/todos_list.dart';

class ToDosPage extends GetView<ToDosController> {
  ToDosPage({Key? key}) : super(key: key) {
    Get.put(ToDosController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ToDosPage')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [AddToDoForm(), Expanded(child: ToDoList())],
          ),
        ),
      ),
    );
  }
}
