import 'package:chiya_startup/key/test_key.dart';
import 'package:chiya_startup/pages/main_page.dart';
import 'package:chiya_startup/state/theme_provider.dart';
import 'package:chiya_startup/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return KhaltiScope(
      publicKey: testKey,
      builder: (context, navKey) {
        return MaterialApp(
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ne', 'NP'),
          ],
          localizationsDelegates: const [
            KhaltiLocalizations.delegate,
          ],
          navigatorKey: navKey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: themeMode == true ? myDarkTheme : myLightTheme,
          home: const MainPage(),
        );
      },
    );
  }
}
