import 'package:ecomerceapp/widget/reserche.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Welcom ',
                style: GoogleFonts.getFont('REM',
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              //cart icon
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 15, 0),
                child: Icon(
                  Icons.shopping_bag,
                  size: 40,
                ),
              )
            ]),
            //reserch textfeild in widget
            const Reserche(),
            //promotion image
            Text('Promotion :',
                style: GoogleFonts.getFont('REM',
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold))),
            //producte card
            Text(
              'Product :',
              style: GoogleFonts.getFont(
                'REM',
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
