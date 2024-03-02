import 'package:url_launcher/url_launcher.dart';

void launchURL(String? url, String scheme, String host) async {
  try {
    await launchUrl(
      Uri(
        host: host,
        scheme: scheme,
        path: url,
      ),
      mode: LaunchMode.platformDefault,
    );
  } catch (e) {
    rethrow;
  }
}
