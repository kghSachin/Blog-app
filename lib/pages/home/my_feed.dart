import 'package:chiya_startup/pages/home/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyFeed extends ConsumerWidget {
  const MyFeed({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 16,
          ),
          child: Divider(
            color: Theme.of(context).indicatorColor.withOpacity(0.8),
            thickness: 0.5,
            height: 0,
          ),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/details");
            },
            child: const HomeCard());
      },
    );
  }
}
