import 'package:ecomerceapp/List/listprodect.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ShoesDetaile extends StatelessWidget {
  final Shoes shoes;
  final void Function() onTap;

  const ShoesDetaile({super.key, required this.shoes, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap go for <home.dart> for void fonction
      onTap: onTap,
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(9),
        margin: const EdgeInsets.only(left: 25),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 177, 177, 177),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image prodect shoes take imagepath in list <Listprodect>
            Image.asset(
              shoes.imagepath,
              height: 200,
              width: 250,
            ),
            const SizedBox(
              height: 15,
            ),
            //name proidect in list <Listprodect>
            Text(
              shoes.name,
              style: GoogleFonts.getFont('REM',
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 15,
            ),
            //prix and icon prodecte - prix in list <Listprodect>
            //icon for add prodect in cart
            SizedBox(
              width: 270,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${shoes.prix}',
                      style: GoogleFonts.getFont('REM',
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    //icon for add
                    const Icon(
                      Icons.add_circle,
                      size: 30,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
