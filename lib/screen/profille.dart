import 'package:ecomerceapp/provider/data.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:provider/provider.dart';
import 'dart:typed_data';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Uint8List? pickedImage;
  String? imageUrl;

  @override
  void initState() {
    super.initState();
    _loadImageUrl();
  }

  Future<void> _loadImageUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedImageUrl = prefs.getString('profileImageUrl');
    if (storedImageUrl != null) {
      setState(() {
        imageUrl = storedImageUrl;
        // ignore: avoid_print
        print('Loaded image URL: $imageUrl');
      });
    } else {
      // ignore: avoid_print
      print('No image URL found in SharedPreferences.');
    }
  }

  Future<void> onProfileTapped() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      // ignore: avoid_print
      print('No image selected.');
      return;
    }

    final Uint8List imageBytes = await image.readAsBytes();
    setState(() {
      pickedImage = imageBytes;
    });

    final storage = FirebaseStorage.instance;
    final storageRef = storage.ref('gs://shoes-app-299bb.appspot.com');
    final imageRef = storageRef.child(
        'profileImages/logo_${DateTime.now().millisecondsSinceEpoch}.png');
    final uploadTask = await imageRef.putData(imageBytes);
    // ignore: avoid_print
    print('Image uploaded: ${uploadTask.metadata?.fullPath}');

    String downloadUrl = await imageRef.getDownloadURL();
    // ignore: avoid_print
    print('Download URL: $downloadUrl');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('profileImageUrl', downloadUrl);
    // ignore: avoid_print
    print('Image URL saved to SharedPreferences.');

    setState(() {
      imageUrl = downloadUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            GestureDetector(
              onTap: onProfileTapped,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: (pickedImage != null
                      ? DecorationImage(
                          image: MemoryImage(pickedImage!),
                          fit: BoxFit.cover,
                        )
                      : (imageUrl != null
                          ? DecorationImage(
                              image: NetworkImage(imageUrl!),
                              fit: BoxFit.cover,
                            )
                          : null)),
                ),
                child: (pickedImage == null && imageUrl == null)
                    ? const Icon(
                        Icons.person,
                        size: 107,
                      )
                    : null,
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
                    classInstancee.changeTheme();
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
