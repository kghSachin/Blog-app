// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiya_startup/state/theme_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    ref.watch(themeProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.pinkAccent,
                    child: Center(
                      child: Text(
                        "SB",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sachin Basnet",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "@KghSachin",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("My Posts"),
                        leading: const Icon(Icons.bookmark_add_outlined),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Draft Posts"),
                        leading: const Icon(Icons.drafts_outlined),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("History"),
                        leading: const Icon(Icons.history),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("My Profile"),
                        leading: const Icon(Icons.person),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Settings"),
                        leading: const Icon(
                          Icons.settings_outlined,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Notifications"),
                        leading: const Icon(
                          Icons.notifications_active_outlined,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Material(
                      child: ListTile(
                          tileColor: Theme.of(context).scaffoldBackgroundColor,
                          onTap: () {
                            setState(() {
                              value = !value;
                              ref
                                  .read(themeProvider.notifier)
                                  .update((state) => value);
                            });
                          },
                          title: const Text("Dark Mode"),
                          leading: const Icon(Icons.layers_outlined),
                          trailing: SizedBox(
                            width: 26,
                            child: Switch.adaptive(
                                trackOutlineColor:
                                    MaterialStateProperty.all(Colors.grey),
                                trackOutlineWidth:
                                    MaterialStateProperty.all(0.1),
                                dragStartBehavior: DragStartBehavior.down,
                                inactiveThumbColor: Colors.blueGrey,
                                activeColor: Colors.grey,
                                activeTrackColor: Colors.blueGrey,
                                inactiveTrackColor:
                                    Colors.grey.withOpacity(0.5),
                                thumbIcon: MaterialStateProperty.all(
                                  value == false
                                      ? const Icon(
                                          Icons.light_mode_outlined,
                                          color: Colors.white,
                                        )
                                      : const Icon(
                                          Icons.dark_mode_outlined,
                                          color: Colors.white,
                                        ),
                                ),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: value,
                                onChanged: (val) {
                                  setState(() {
                                    value = val;
                                    ref
                                        .read(themeProvider.notifier)
                                        .update((state) => value);
                                  });
                                }),
                          )),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Support"),
                        leading: const Icon(
                          Icons.support_agent_outlined,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Discord"),
                        leading: const Icon(Icons.disc_full),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Facebook"),
                        leading: const Icon(Icons.facebook_outlined),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("Twitter"),
                        leading: const Icon(Icons.baby_changing_station),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Theme.of(context).dividerColor,
                    ),
                    Material(
                      child: ListTile(
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {},
                        title: const Text("LinkedIn"),
                        leading: const Icon(Icons.link_outlined),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Material(
                  child: ListTile(
                    tileColor: Theme.of(context).scaffoldBackgroundColor,
                    splashColor: Colors.black.withOpacity(0.5),
                    onTap: () {},
                    title: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.red),
                    ),
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "v 0.0.1 alpha",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
