import 'package:flutter/material.dart';
import 'package:getx_test/modules/todos/view/todos_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDosPage() ,
    );
  }
}