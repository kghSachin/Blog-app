import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Feed"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.create_outlined,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 150.0,
            actions: [
              IconButton(
                onPressed: () {},
                icon:const Icon(Icons.add),
              ),
            ],
            automaticallyImplyLeading: false,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Demo'),
              centerTitle: true,
            ),
            title:const Text("this is title"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: Colors.amber[600],
                  child: Center(child: Text('Item $index')),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
