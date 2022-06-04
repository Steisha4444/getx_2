import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/picture_goodbye/picture_goodbye_page.dart';
import 'package:getx_test/modules/picture_hello/picture_hello_page.dart';
import 'package:getx_test/modules/todos/controller/todos_controller.dart';
import 'package:getx_test/modules/todos/view/todos_form.dart';
import 'package:getx_test/modules/todos/view/todos_list.dart';
import 'package:getx_test/widgets/button.dart';

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
            children: [
              AddToDoForm(),
              Expanded(child: ToDoList()),
              Button(text: "hello", onTap: () => Get.to(PictureHelloPage())),
              Button(
                text: "goodbye motherfucker ",
                onTap: ()=> Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PictureGoodbyePage(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
