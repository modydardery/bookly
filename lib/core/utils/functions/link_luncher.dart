import 'package:bookly/core/utils/functions/preview_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    previewSnakBar(context, url);
  }
}
