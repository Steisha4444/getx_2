import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_test/models/todo.dart';

class ToDosController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  bool isInEditMode = false;
  int? editIndex;
  List<Todo> todos = [];

  void onAdd() {
    final Todo todo = Todo(titleController.text, descriptionController.text);
    todos.add(todo);
    update();
  }


  void onSaveEdit(){
    todos[editIndex!] = todos[editIndex!].copyWith(title: titleController.text, description: descriptionController.text);
     isInEditMode = false;
     editIndex = null;
      update();
  }

  void onCheckTodo(int index){
    todos[index].checked = !todos[index].checked;
    update();

  }

  void onRemove(int index) {
    todos.removeAt(index);
    update();
  }

  void onEdit(int index) {
    isInEditMode = true;
    editIndex = index;
    update();
    final todo = todos[index];
    titleController.text = todo.title;
    descriptionController.text = todo.description;

  }
}
