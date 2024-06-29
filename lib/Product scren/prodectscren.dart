import 'package:ecomerceapp/List/listprodect.dart';
import 'package:flutter/material.dart';

class Prodectscren extends StatefulWidget {
  final Shoes shoes;
  const Prodectscren({super.key, required this.shoes});

  @override
  State<Prodectscren> createState() => _ProdectscrenState();
}

class _ProdectscrenState extends State<Prodectscren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.shoes.imagepath),
          Row(
            children: [Text(widget.shoes.name), Text(widget.shoes.prix)],
          )
        ],
      ),
    );
  }
}
