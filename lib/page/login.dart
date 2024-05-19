import 'package:ecomerceapp/page/signe_up.dart';
import 'package:ecomerceapp/widget/textfeild.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    'Login',
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
              const Textfeild(
                ispasword: false,
                textInputType1: TextInputType.emailAddress,
                hinttext: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              const Textfeild(
                ispasword: true,
                textInputType1: TextInputType.emailAddress,
                hinttext: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'I dont have accont',
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup())),
                    child: const Text(
                      'Sign-up',
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
              //button for login
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 255, 255)),
                child: const Center(
                  child: Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
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
