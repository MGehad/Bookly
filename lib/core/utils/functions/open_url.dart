import 'package:url_launcher/url_launcher.dart';

import 'snack_bar.dart';

Future<void> openUrl(context, String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri)) {
    snackBar(context, 'Could not launch $url');
  }
}


