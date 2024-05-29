import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reserche extends StatefulWidget {
  const Reserche({super.key});

  @override
  State<Reserche> createState() => _ResercheState();
}

class _ResercheState extends State<Reserche> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
      width: 500,
      height: 52,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 201, 198, 198),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: const Icon(Icons.search),
          hintText: 'Reserche',
          hintStyle: GoogleFonts.getFont('REM',
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 26, 23, 23))),
        ),
      ),
    );
  }
}
