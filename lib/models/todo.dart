// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  final String title;
  final String description;
  bool checked;

  Todo(
    this.title,
    this.description,
    [this.checked = false,
  ]);

  Todo copyWith({
    String? title,
    String? description,
    bool? checked,
  }) {
    return Todo(
      title ?? this.title,
      description ?? this.description,
      checked ?? this.checked,
    );
  }


 
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Todo &&
      other.title == title &&
      other.description == description &&
      other.checked == checked;
  }

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ checked.hashCode;
}
