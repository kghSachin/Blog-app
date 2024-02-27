import 'package:flutter/material.dart';

class Siver extends StatelessWidget {
  const Siver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 30,
                ),
              ],
            ),
          const  SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          const  SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
