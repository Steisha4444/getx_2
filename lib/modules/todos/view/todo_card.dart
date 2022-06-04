import 'package:flutter/material.dart';
import 'package:getx_test/models/todo.dart';
import 'package:getx_test/widgets/button.dart';

class ToDoCard extends StatelessWidget {
  final Todo todo;
  final void Function() onEdit;
  final void Function() onDelete;
  final void Function() onCheckTodo;

  const ToDoCard({
    required this.todo,
    required this.onEdit,
    required this.onDelete,
    required this.onCheckTodo,
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16) ,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      todo.title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Checkbox(value: todo.checked, onChanged:(_) => onCheckTodo()),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  todo.description,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Button(
                text: "Delete",
                color: Colors.redAccent,
                onTap: onDelete,
              ),
              SizedBox(height: 12),
              Button(
                text: "Edit",
                color: Colors.blue,
                onTap: onEdit,
              ),
            ],
          )
        ],
      ),
    );
  }
}
