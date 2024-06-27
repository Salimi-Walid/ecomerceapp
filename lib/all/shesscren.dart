import 'package:ecomerceapp/List/listprodect.dart';
import 'package:ecomerceapp/Product%20scren/prodectscren.dart';
import 'package:ecomerceapp/widget/shoesdetail.dart';
import 'package:flutter/material.dart';

class Allshoes extends StatefulWidget {
  const Allshoes({super.key});

  @override
  State<Allshoes> createState() => _AllshoesState();
}

class _AllshoesState extends State<Allshoes> {
  void navigateProdectscren(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Prodectscren()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 30,
                  ),
                  itemCount: shoesezy.length, // Ensure to provide itemCount
                  itemBuilder: (context, index) {
                    return ShoesDetaile(
                      shoes: shoesezy[index],
                      onTap: () => navigateProdectscren(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
