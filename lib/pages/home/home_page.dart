import 'package:chiya_startup/pages/auth/landing_page.dart';
import 'package:chiya_startup/pages/home/events.dart';
import 'package:chiya_startup/pages/home/featured_page.dart';
import 'package:chiya_startup/pages/home/my_feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MainPageState();
}

class MainPageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).cardColor,
          elevation: 0,
          title: const Text("My Feed"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LandingPage()));
                },
                icon: const Icon(
                  Icons.create_outlined,
                )),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add_outlined),
            ),
          ],
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Theme.of(context).cardColor,
                pinned: true,
                floating: true,
                expandedHeight: 130.0,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.none,
                  titlePadding: EdgeInsets.zero,
                  expandedTitleScale: 1,
                  background: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
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
                                      color:
                                          Colors.blueAccent.withOpacity(0.6))),
                              child: const CircleAvatar(
                                radius: 33,
                                backgroundImage: NetworkImage(
                                    "https://th.bing.com/th?id=ORMS.f9d38e851d40dc0db87ce2337719a559&pid=Wdp&w=612&h=304&qlt=90&c=1&rs=1&dpr=1.5&p=0"),
                              ),
                            );
                          },
                        ),
                      ),
                      // const SizedBox(
                      //   height: 12,
                      // ),
                    ],
                  ),
                  title: Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 0.2),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 1, color: Colors.blueGrey.withOpacity(0.5)),
                        top: BorderSide(
                            width: 1, color: Colors.blueGrey.withOpacity(0.5)),
                      ),
                    ),
                    child: TabBar(
                        labelPadding: const EdgeInsets.all(6),
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        labelColor: Colors.blue,
                        labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        // isScrollable: true,
                        // tabAlignment: TabAlignment.start,
                        indicatorColor: Colors.blue,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 2.2,
                        dividerColor: Colors.transparent,
                        indicatorPadding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        controller: _tabController,
                        tabs: const [
                          Text(
                            "My Feed",
                          ),
                          Text("Featured"),
                          Text("Upcoming"),
                        ]),
                  ),
                  centerTitle: true,
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              MyFeed(),
              FeaturedPage(),
              UpcomingEvents(),
            ],
          ),
        ),
      ),
    );
  }
}
