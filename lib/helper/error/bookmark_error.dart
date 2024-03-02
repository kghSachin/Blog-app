import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoBookmark extends StatelessWidget {
  const NoBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text("Bookmarks"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 100),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0)
                  .copyWith(top: 24),
              child: Lottie.asset("assets/lottie/no_bookmark.json"),
            )),
            const Text(
              "You haven't bookmarked any post on chiya and startup yet.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        )

        // (child: Lottie.asset("assets/lottie/no_bookmark.json")),
        );
  }
}
