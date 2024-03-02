import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchEmptyScreen extends StatelessWidget {
  const SearchEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 150,
            backgroundColor: Theme.of(context).focusColor,
            child: Lottie.asset(
              "assets/lottie/empty_search.json",
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Start searching for posts and users on chiya and startup.",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ));
  }
}
