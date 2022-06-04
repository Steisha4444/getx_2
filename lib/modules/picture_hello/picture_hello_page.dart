import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_test/widgets/button.dart';

class PictureHelloPage extends StatelessWidget {
  const PictureHelloPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Image.asset("assets/images/hell.jpg"),
        Button(text: "go back", onTap:()=> Get.back(),)
      ],
    ),);
  }
}
