import 'package:flutter/material.dart';
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
      body: Column(
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
                      "images/chiyaapp.png",
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
                    "Unveiling The Tales Of Nepali Entrepreneurs, One Story At A Time.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
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
                // Expanded(
                //   child: Container(
                //     height: 400,
                //     decoration: BoxDecoration(color: Colors.grey),
                //   ),
                // )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}
