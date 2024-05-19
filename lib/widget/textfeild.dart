import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
  final bool ispasword;
  final TextInputType textInputType1;
  final String hinttext;
  const Textfeild(
      {super.key,
      required this.hinttext,
      required this.ispasword,
      required this.textInputType1});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
      width: 308,
      height: 52,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 252, 251, 249),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: ispasword,
        keyboardType: textInputType1,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 22),
            border: InputBorder.none),
      ),
    );
  }
}
