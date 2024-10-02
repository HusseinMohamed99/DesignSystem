part of './../export_manager/export_manager.dart';

Future<void> urlLauncher(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      context.showSnackBar('Could not launch $url');
    }
  }
}
