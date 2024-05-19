import 'package:ecomerceapp/page/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: "walid",
      options: const FirebaseOptions(
          apiKey: "AIzaSyBtrFgOs6Qo04R5S11O6mHqlCaZQ8YCJD4",
          appId: "1:874092096357:android:b10074acd9cfabdf9d0f8c",
          messagingSenderId: "874092096357",
          projectId: "shoes-app-299bb"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
