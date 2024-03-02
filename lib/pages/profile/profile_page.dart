// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiya_startup/pages/profile/url_launcher.dart';
import 'package:chiya_startup/state/theme_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
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
                        "SD",
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
                        "Sumit Dhakal",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "@dhakalsumit06",
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
                        leading: const Icon(
                          Icons.image_outlined,
                          size: 24,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
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
                        leading: const Icon(
                          Icons.article_outlined,
                          size: 24,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
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
                        leading: const Icon(
                          Icons.history_outlined,
                          size: 24,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
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
                            ref
                                .read(themeProvider.notifier)
                                .update((state) => !state);
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
                                  ref.watch(themeProvider) == false
                                      ? const Icon(
                                          weight: 5,
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
                                value: ref.watch(themeProvider),
                                onChanged: (val) {
                                  ref
                                      .read(themeProvider.notifier)
                                      .update((state) => !state);
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
                        onTap: () {
                          launchURL(null, "https", "www.discord.com");
                        },
                        title: const Text("Discord"),
                        leading: SvgPicture.asset(
                          "assets/icons/profile/discord.svg",
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).indicatorColor,
                              BlendMode.srcATop),
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
                        onTap: () {
                          launchURL(
                              '@chiyarastartup', "https", "www.facebook.com");
                        },
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
                        onTap: () {
                          launchURL(
                              "/@chiyarastartup", "https", "www.youtube.com");
                        },
                        title: const Text("Youtube"),
                        leading: SvgPicture.asset(
                          height: 26,
                          width: 26,
                          "assets/icons/profile/youtube.svg",
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).indicatorColor,
                              BlendMode.srcATop),
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
                        onTap: () {
                          launchURL(null, "https", "www.twitter.com");
                        },
                        title: const Text("Twitter"),
                        leading: SvgPicture.asset(
                          height: 18,
                          width: 18,
                          "assets/icons/profile/twitter.svg",
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).indicatorColor,
                              BlendMode.srcATop),
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
                        contentPadding:
                            const EdgeInsets.only(left: 8, right: 24),
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        onTap: () {
                          launchURL(null, "https", "www.linkedin.com");
                        },
                        title: const Text("LinkedIn"),
                        leading: SvgPicture.asset(
                          height: 28,
                          width: 28,
                          "assets/icons/profile/linkedin.svg",
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).indicatorColor,
                              BlendMode.srcATop),
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
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Material(
                  child: ListTile(
                    tileColor: Theme.of(context).scaffoldBackgroundColor,
                    splashColor: Colors.black.withOpacity(0.5),
                    onTap: () {
                      _showDialog(context);
                    },
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.red.withOpacity(0.8)),
                    ),
                    leading: SvgPicture.asset(
                      "assets/icons/profile/logout.svg",
                      colorFilter:
                          const ColorFilter.mode(Colors.red, BlendMode.srcATop),
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

  _showDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetAnimationCurve: Curves.easeInOutBack,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Are you sure you want to logout from the app?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const SizedBox(
                        width: double.maxFinite,
                        child: Center(child: Text("Cancel"))),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const SizedBox(
                        width: double.maxFinite,
                        child: Center(child: Text("Logout"))),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
