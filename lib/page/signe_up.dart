import 'package:ecomerceapp/page/login.dart';
import 'package:ecomerceapp/widget/textfeild.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();
  final passwordcontroler = TextEditingController();
  final confermpassword = TextEditingController();
  Future signup() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
    if (passwordconferm()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordcontroler.text.trim());
    }

    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed('/');
    Navigator.of(context).pop();
  }

  bool passwordconferm() {
    if (passwordcontroler.text.trim() == confermpassword.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordcontroler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //logo of compane
              Row(
                children: [
                  Image.asset(
                    'logo.png',
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 100,
                    height: 100,
                  ),
                  const Text(
                    'Signup',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //image for good disigne/yeezy-Black-350-v2-.png
              Transform.rotate(
                angle: -math.pi / 9.5, // Tilt the image by 30 degrees
                child: Image.asset('yeezy-Black-350-v2-.png'),
              ),
              const SizedBox(
                height: 40,
              ),
              // textfeild for email and signup
              Textfeild(
                controler: emailController,
                ispasword: false,
                textInputType1: TextInputType.emailAddress,
                hinttext: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              Textfeild(
                controler: passwordcontroler,
                ispasword: true,
                textInputType1: TextInputType.visiblePassword,
                hinttext: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              Textfeild(
                controler: confermpassword,
                ispasword: true,
                textInputType1: TextInputType.visiblePassword,
                hinttext: "Conferm Password",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'I have accont',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  //navigation sur signup page
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login())),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 185, 167)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //button for Signup
              GestureDetector(
                onTap: signup,
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  child: const Center(
                    child: Text('Signup',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
