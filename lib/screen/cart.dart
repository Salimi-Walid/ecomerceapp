import 'package:ecomerceapp/provider/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.getFont('REM',
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(15),
            width: 120,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 0, 0, 0)),
            child: Center(
              child: Text(
                'Total Price: \$${classInstancee.prixe}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: classInstancee.prodectselected.length,
              itemBuilder: (context, index) {
                final product = classInstancee.prodectselected[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      leading: Image.asset(
                        product.imagepath,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(product.name),
                      subtitle: Text('\$${product.prix}'),
                      trailing: IconButton(
                          onPressed: () {
                            classInstancee
                                .remove(classInstancee.prodectselected[index]);
                          },
                          icon: const Icon(Icons.delete_sharp)),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: 200,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 0, 0, 0)),
            child: const Center(
              child: Text(
                'BUY NOW',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
