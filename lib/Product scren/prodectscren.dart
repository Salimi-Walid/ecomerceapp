import 'package:ecomerceapp/List/listprodect.dart';
import 'package:ecomerceapp/provider/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Prodectscren extends StatelessWidget {
  final Shoes shoes;
  const Prodectscren({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 189, 189, 189),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 189, 189, 189),
                ),
                child: Image.asset(
                  shoes.imagepath,
                  height: 350,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                margin: const EdgeInsets.fromLTRB(8, 8, 420, 8),
                child: const Row(
                  children: [
                    Text(
                      '4.8',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      shoes.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      '\$${shoes.prix.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'With the product we offer you some additions to make your meal more satisfying and also to thank you for trusting us.',
                  style: TextStyle(
                      height: 1.5, color: Color.fromARGB(255, 58, 57, 57)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  classInstancee.add(shoes);
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 31, 31, 31)),
                  child: const Center(
                    child: Text('Add To Cart',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
