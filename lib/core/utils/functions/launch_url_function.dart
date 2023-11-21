import 'package:bookly_app/core/utils/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlFunction(
    {required String? urlText, required context}) async {
  if (urlText != null) {
    Uri url = Uri.parse(urlText);
    if (!await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      customSnackBar(context, url: url.toString());
    }
  }
}
