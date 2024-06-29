import 'package:flutter/material.dart';

class Prophile extends StatefulWidget {
  const Prophile({super.key});

  @override
  State<Prophile> createState() => _ProphileState();
}

class _ProphileState extends State<Prophile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            child: Image.network(
                'blob:https://lordicon.com/77488be1-5934-442e-884d-471bd17e458a'),
          )
        ],
      ),
    );
  }
}
