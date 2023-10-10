import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdfx/pdfx.dart';
import 'package:portfolioapp/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  // Future<void> _launchInBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw Exception('Could not launch $url');
  //   }
  // }
  _launchURL() async {
    final Uri url = Uri.parse('https://www.instagram.com/mr_hashtag.jpeg/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  _launchURLlinkedin() async {
    final Uri url = Uri.parse('https://www.linkedin.com/in/pushprajkushwaha/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  _launchURLgithub() async {
    final Uri url = Uri.parse('https://github.com/Itsmrhashtag');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  _launchURLportfolio() async {
    final Uri url =
        Uri.parse('https://itsmrhashtag.github.io/portfolio_hashtag/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 50, right: 50),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    "images/dp.png",
                    height: 400,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
              ),
              child: Column(
                children: [
                  Text(
                    "Hello I am",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Pushpraj Kushwaha",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Software Developer",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PdfViewer()));
                      },
                      child: Text("Hire Me"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white, primary: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: _launchURL,
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: _launchURLportfolio,
                          icon: Icon(
                            FontAwesomeIcons.hashtag,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            FlutterPhoneDirectCaller.callNumber(
                                "+918305330042");
                          },
                          icon: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: _launchURLlinkedin,
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: _launchURLgithub,
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
