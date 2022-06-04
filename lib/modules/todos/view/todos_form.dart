import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/todos/controller/todos_controller.dart';
import 'package:getx_test/widgets/button.dart';

class AddToDoForm extends GetView<ToDosController> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller.titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: controller.descriptionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            controller.isInEditMode
                ? Button(
                    text: "Save",
                    color: Colors.blue,
                    onTap: controller.onSaveEdit,
                  )
                : Button(
                    text: "Add",
                    color: Colors.blueGrey,
                    onTap: controller.onAdd,
                  ),
          ],
        )
      ],
    ));
  }
}
