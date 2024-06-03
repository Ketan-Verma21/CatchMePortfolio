import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
class ProfileIcons extends StatefulWidget {
  const ProfileIcons({Key? key}) : super(key: key);

  @override
  State<ProfileIcons> createState() => _ProfileIconsState();
}

class _ProfileIconsState extends State<ProfileIcons> {

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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            tooltip: "Mail",
            onPressed: _sendingMails,
            icon: Icon(
              Icons.mail_rounded,
              color: Colors.black54,
              size: 34,
            ),
          ),
          IconButton(
            tooltip: "Resume",
            onPressed: _launchUrlresume,
            icon: Icon(
              Icons.contact_page_rounded,
              color: Colors.black54,
              size: 34,
            ),
          ),
          GestureDetector(
            onTap: _launchUrllin,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                height: 34,
                width: 34,
                child: Tooltip(
                  message: "LinkedIn",
                  child: Container(
                    child: Image(
                      image: AssetImage("assets/lin.png"),
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GestureDetector(
              onTap: _launchUrlGit,
              child: Container(
                height: 42,
                width: 42,
                child: Tooltip(
                  message: "GitHub",
                  child: Container(
                    child: Image(
                      image: AssetImage("assets/git.png"),
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 34,
              width: 34,
              child: Tooltip(
                message: "website",
                child: Container(
                  child: Image(
                    image: AssetImage("assets/world.png"),
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
