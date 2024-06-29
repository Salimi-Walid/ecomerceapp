import 'package:ecomerceapp/widget/reserche.dart';
import 'package:flutter/material.dart';

class Serch extends StatefulWidget {
  const Serch({super.key});

  @override
  State<Serch> createState() => _SerchState();
}

class _SerchState extends State<Serch> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [Reserche()]),
    );
  }
}
