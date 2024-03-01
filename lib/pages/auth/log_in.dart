import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    child: Image(
                      image: AssetImage(
                        "assets/images/chiyaapp.png",
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: Text(
                      "Unveiling the tales of nepali entrepreneurs, One story at a time.",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(color: Colors.grey),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 20, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Username",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                // filled: true,
                                // fillColor: Colors.white38,
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white38,
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 45,
                            width: 400,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                                onPressed: () {},
                                child: const Text("Login",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(text: "Don't have an account?"),
                              TextSpan(
                                  text: " Register Here",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline))
                            ])),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
