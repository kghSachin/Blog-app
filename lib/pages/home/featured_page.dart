import 'package:flutter/material.dart';

class FeaturedPage extends StatefulWidget {
  const FeaturedPage({super.key});

  @override
  State<FeaturedPage> createState() => _FeaturedPageState();
}

class _FeaturedPageState extends State<FeaturedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Theme.of(context).cardColor,
              ),
              Container(
                height: 200,
                color: Theme.of(context).cardColor,
              ),
              Container(
                height: 200,
                color: Theme.of(context).cardColor,
              ),
              Container(
                height: 200,
                color: Theme.of(context).cardColor,
              ),
              Container(
                height: 200,
                color: Theme.of(context).cardColor,
              )
            ],
          ),
        ));
  }
}
