import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_test/models/todo.dart';

class ToDosController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final _isInEditMode = false.obs;

  bool get isInEditMode => _isInEditMode.value;
  set isInEditMode(bool value) => _isInEditMode.value = value;

  final _editIndex = Rx<int?>(null);

  int? get editIndex => _editIndex.value;
  set editIndex(int? value) => _editIndex.value = value;

  final todos = <Todo>[].obs;

  void onAdd() {
    final Todo todo = Todo(titleController.text, descriptionController.text);
    todos.add(todo);
  }

  void onSaveEdit() {
    todos[editIndex!] = todos[editIndex!].copyWith(
        title: titleController.text, description: descriptionController.text);
    isInEditMode = false;
    editIndex = null;
  }

  void onCheckTodo(int index) {
    todos[index].checked = !todos[index].checked;
    todos.refresh();
  }

  void onRemove(int index) {
    todos.removeAt(index);
  }

  void onEdit(int index) {
    isInEditMode = true;
    editIndex = index;
    final todo = todos[index];
    titleController.text = todo.title;
    descriptionController.text = todo.description;
  }
}
