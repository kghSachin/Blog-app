import 'package:chiya_startup/components/loading/loading_screen.dart';
import 'package:chiya_startup/helper/error/error_screen.dart';
import 'package:chiya_startup/key/test_key.dart';
import 'package:chiya_startup/pages/auth/login_page.dart';
import 'package:chiya_startup/pages/auth/register_page.dart';
import 'package:chiya_startup/pages/main_page.dart';
import 'package:chiya_startup/pages/post_detail/post_details.dart';
import 'package:chiya_startup/pages/profile/edit_profile.dart';
import 'package:chiya_startup/pages/profile/notification.dart';
import 'package:chiya_startup/pages/profile/profile_page.dart';
import 'package:chiya_startup/pages/search/search_page.dart';
import 'package:chiya_startup/state/providers/is_loading_provider.dart';
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
      enabledDebugging: true,
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
            routes: {
              // "/": (context) => const MainPage(),
              "/home": (context) => const MainPage(),
              "/search": (context) => const SearchPage(),
              "/profile": (context) => const ProfilePage(),
              "/details": (context) => const PostDetailsView(),
              "/edit_profile": (context) => const EditProfile(),
              "/login": (context) => const LogIn(),
              "/register": (context) => const RegisterPage(),
              "/notification": (context) => const NotificationScreen(),
            },
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: themeMode == true ? myDarkTheme : myLightTheme,
            home: Consumer(
              builder: (BuildContext context, ref, child) {
                final isLoading = ref.watch(isLoadingProvider);
                // ref.listen<bool>(isLoadingProvider, (previous, next) {
                //   if (next != true) {
                //     LoadingScreen.instance().show(context: context);
                //   } else {
                //     LoadingScreen.instance().hide();
                //   }
                // });
                if (!isLoading) {
                  LoadingScreen.instance().show(context: context);
                }
                return const MainPage();
              },
            ));
      },
    );
  }
}
