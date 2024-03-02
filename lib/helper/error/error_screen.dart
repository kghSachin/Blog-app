import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset(
        "assets/lottie/network_error.json",
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error);
        },
      )),
    );
  }
}
