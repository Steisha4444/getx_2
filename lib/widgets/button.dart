import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color? color;
  final String text;
  final void Function() onTap;
  const Button({Key? key, this.color, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: onTap,
            child: Text(text),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
