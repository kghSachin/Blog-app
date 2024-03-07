import 'package:chiya_startup/helper/error/search_empty_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SearchBar(
                onChanged: (value) {},
                leading: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                ),
                hintText: "Start typing to search...",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 40,
              thickness: 1.5,
              color: Theme.of(context).indicatorColor.withOpacity(0.2),
            ),
            const SearchEmptyScreen()
          ],
        ),
      ),
    );
  }
}
