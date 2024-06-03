import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class LaunchProfile{
  Future<void> _launchUrlGit() async {
    if (!await launchUrl(git_url)) {
      throw Exception('Could not launch $git_url');
    }
  }
  Future<void> _launchUrllin() async {
    if (!await launchUrl(lin_url)) {
      throw Exception('Could not launch $lin_url');
    }
  }
  Future<void> _launchUrlresume() async {
    if (!await launchUrl(resume_url)) {
      throw Exception('Could not launch $resume_url');
    }
  }
  _sendingMails() async {
    var url = Uri.parse("mailto:ketanverma1511@gmail.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}