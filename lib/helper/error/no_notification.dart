import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NotificationNotFound extends StatelessWidget {
  const NotificationNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: Center(
            child: Lottie.asset("assets/lottie/notification_empty.json"),
          ),
        ),
        Text(
          "You are all caught up!, come back later for more updates.",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.4,
                color: Theme.of(context).indicatorColor,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
        ),
      ],
    );
  }
}
