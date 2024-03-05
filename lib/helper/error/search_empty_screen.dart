import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchEmptyScreen extends StatelessWidget {
  const SearchEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const CircularProgressIndicator(),
            Text(
              "Start typing to search...",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 400,
              child: Lottie.asset(
                "assets/lottie/search.json",
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
