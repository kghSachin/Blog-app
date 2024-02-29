import 'package:chiya_startup/helper/shimmer/shimmer_effect.dart';
import 'package:chiya_startup/pages/auth/log_in.dart';
import 'package:chiya_startup/pages/profile/profile_page.dart';
import 'package:chiya_startup/state/theme_provider.dart';
import 'package:chiya_startup/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeMode == true ? myDarkTheme : myLightTheme,
      home: ProfilePage(),
    );
  }
}
