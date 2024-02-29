import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPageDemo extends ConsumerStatefulWidget {
  const MainPageDemo({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPageDemo>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
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
            expandedHeight: 130.0,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 2,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: Colors.blueAccent.withOpacity(0.6))),
                          child: const CircleAvatar(
                            radius: 33,
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th?id=ORMS.f9d38e851d40dc0db87ce2337719a559&pid=Wdp&w=612&h=304&qlt=90&c=1&rs=1&dpr=1.5&p=0"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              title: TabBar(
                  // isScrollable: true,
                  // tabAlignment: TabAlignment.start,
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  controller: TabController(length: 3, vsync: this),
                  tabs: [
                    Text(
                      "Home",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text("data"),
                    Text("data"),
                  ]),
              centerTitle: true,
            ),
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
