import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_test/widgets/button.dart';

class PictureGoodbyePage extends StatelessWidget {
  const PictureGoodbyePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Image.asset("assets/images/goodbye.jpg"),
        Button(text: "go back", onTap:Navigator.of(context).pop,)
      ],
    ),);
  }
}
