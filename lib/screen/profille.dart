import 'package:ecomerceapp/provider/data.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // add image for profial
  Future<void> onprofileTapped() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final storageRef = FirebaseStorage.instance.ref();
    final imageRef = storageRef.child('assets/logo.png');
    final imageBytes = await image.readAsBytes();
    await imageRef.putData(imageBytes);
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // User profile image
            GestureDetector(
              onTap: onprofileTapped,
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 172, 172, 172),
                foregroundColor: Color.fromARGB(255, 0, 0, 0),
                maxRadius: 68,
                child: Icon(
                  Icons.person,
                  size: 107,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: false,
                  onChanged: (value) {
                    data.changeTheme();
                  },
                ),
              ),
            ),

            // paramitre account and adress
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.account_circle),
                      title: const Text('Account'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    // addres
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('My addres'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ],
                ),
              ),
            ),
            // notre paramitre for profile
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                child: Column(
                  children: [
                    // add notification
                    ListTile(
                      leading: const Icon(Icons.notifications),
                      title: const Text('Notification'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    // add favorite
                    ListTile(
                      leading: const Icon(Icons.favorite),
                      title: const Text('Favorit'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    // add supporte
                    ListTile(
                      leading: const Icon(Icons.support_agent),
                      title: const Text('Support'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    // add Langage
                    ListTile(
                      leading: const Icon(Icons.language),
                      title: const Text('Language'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
