import 'package:ecomerceapp/List/listprodect.dart';
import 'package:ecomerceapp/Product%20scren/prodectscren.dart';
import 'package:ecomerceapp/all/shesscren.dart';
import 'package:ecomerceapp/provider/data.dart';
import 'package:ecomerceapp/widget/reserche.dart';
import 'package:ecomerceapp/widget/shoesdetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //navigation to navigation <prodecte scren> fonction
  void navigateProdectscren(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Prodectscren(
                  shoes: shoesezy[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Data>(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Welcom ',
                  style: GoogleFonts.getFont('REM',
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              //cart icon
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                child: Stack(children: [
                  const Icon(
                    Icons.shopping_bag,
                    size: 40,
                  ),
                  Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.circle,
                      ),
                      //this ligic for provaider of if click icons in <shoesdetails.dart>
                      // his plus 1 in the cart
                      child: Text(
                        '${classInstancee.prodectselected.length}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  //icon cart for go to cart for tcheck out
                ]),
              )
            ]),
            //reserch textfeild in widget
            const Reserche(),
            //promotion image
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Promotion :',
                  style: GoogleFonts.getFont('REM',
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            //image for promotion <CarouselSlider>
            Padding(
              padding: const EdgeInsets.all(20),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('addidas1.jpg')),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('addidas2.jpg')),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('adiddas3.png')),
                ],
              ),
            ),
            //producte card
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product :',
                      style: GoogleFonts.getFont(
                        'REM',
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //text for sew etilisater all shoes in store
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Allshoes())),
                      child: Text(
                        'veu all ...',
                        style: GoogleFonts.getFont(
                          'REM',
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 30, 90, 255)),
                        ),
                      ),
                    )
                  ]),
            ),
            //prodecte ezye
            SizedBox(
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ShoesDetaile(
                  shoes: shoesezy[index],
                  onTap: () => navigateProdectscren(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
