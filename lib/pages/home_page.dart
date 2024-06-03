import 'dart:async';
import 'dart:math';
import 'package:catchme_portfilio/components/profile_icons.dart';
import 'package:catchme_portfilio/logic/random_allocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/catch_me_container.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _width = 700; // Initial width
  Color color = Colors.white;
  bool animation_stop = false;
  Random_allocator random_allocator = Random_allocator();
  double _catchMeTop = 250;
  double _catchMeRight = 400;
  Future<void> _launchUrlGit() async {
    if (!await launchUrl(git_url)) {
      throw Exception('Could not launch $git_url');
    }
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 1500), (timer) {
      if (!animation_stop) {
        setState(() {
          _width = random_allocator.randomWidth(MediaQuery.of(context).size.width);
          // color = random_allocator.getRandomColor();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            width: double.infinity,
            height: double.infinity,
            color: animation_stop ? Colors.white : color,
            duration: Duration(milliseconds: 1000),
            child: Center(
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width:  _width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      border: Border(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 200,
                            width: 600,
                            child: const Column(
                              children: [
                                //name
                                Padding(
                                  padding: EdgeInsets.only(top: 25),
                                  child: Text(
                                    "Hello, I'm Ketan Verma",
                                    style: TextStyle(
                                      fontFamily: 'Inspiration',
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                // friendly developer
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Text(
                                    "I am Your friendly Neighbourhood Developer",
                                    style: TextStyle(
                                      fontFamily: 'Inspiration',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                ProfileIcons(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _percentageIndicator(width),
                ],
              ),
            ),
          ),
          if (!animation_stop)
            AnimatedPositioned(
              top: _catchMeTop,
              right: _catchMeRight,
              duration: Duration(milliseconds: 300),
              child: InkWell(
                onTap: () {
                  setState(() {
                    animation_stop = true;
                  });
                },
                onHover: (isHovering) {
                  if (isHovering) {
                    setState(() {
                      _catchMeTop = (Random().nextInt(250)+height*0.33)*1.0;
                      _catchMeRight = (Random().nextInt(800)+width*0.20)*1.0;
                      color = random_allocator.getRandomColor();
                    });
                  }
                },
                child: CatchMe(),
              ),
            ),
          _lowerTexts(width),
        ],
      ),
    );
  }

  Positioned _percentageIndicator(double width) {
    return Positioned(
      bottom: 10,
      right: 10,
      child:  Text(
        "${((_width) * 100 / (width)).toStringAsFixed(0)}%",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black54,
        ),
      ),
    );
  }

  Positioned _lowerTexts(double width) {
    return Positioned(
      bottom: 10,
      right: width / 2 - 120,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "© 2024 | Managed by ",
                style: TextStyle(
                  fontFamily: 'Inspiration',
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: _launchUrlGit,
                child: const Text(
                  "Ketan",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inspiration',
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
