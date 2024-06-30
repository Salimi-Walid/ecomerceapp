import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Prophile extends StatefulWidget {
  const Prophile({super.key});

  @override
  State<Prophile> createState() => _ProphileState();
}

class _ProphileState extends State<Prophile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // image de l'utelisater
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 172, 172, 172),
              foregroundColor: Color.fromARGB(255, 0, 0, 0),
              maxRadius: 68,
              child: Icon(
                Icons.person,
                size: 107,
              ),
            ),
            // nome and prénome de l utelusater
            Row(children: [
              const Text('Name and Préname'),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
            ]),
            // email de l'utelisater
            const Row(
              children: [
                Icon(Icons.email),
                Text('email'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
