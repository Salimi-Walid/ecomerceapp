import 'package:ecomerceapp/provider/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // User profile image
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 172, 172, 172),
              foregroundColor: Color.fromARGB(255, 0, 0, 0),
              maxRadius: 68,
              child: Icon(
                Icons.person,
                size: 107,
              ),
            ),
            // User name and surname
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Name and Surname'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                ),
              ],
            ),
            // User email
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('email@example.com'),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text('Dark Mode'),
              trailing: Switch(
                value: false,
                onChanged: (value) {
                  data.changeTheme();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
