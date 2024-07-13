import 'package:ecomerceapp/List/listprodect.dart';
import 'package:ecomerceapp/Product%20scren/prodectscren.dart';
import 'package:ecomerceapp/widget/reserche.dart';
import 'package:ecomerceapp/widget/shoesdetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Serch extends StatefulWidget {
  const Serch({super.key});

  @override
  State<Serch> createState() => _SerchState();
}

class _SerchState extends State<Serch> {
  void navigateProdectscren(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Prodectscren(
                shoes: shoesezy[index],
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search and Product Details',
          style: GoogleFonts.getFont('REM',
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Reserche(),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
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
        ]),
      ),
    );
  }
}
