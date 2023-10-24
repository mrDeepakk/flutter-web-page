import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileContainer1,
      desktop: desktopContainer1,
    );
  }

  Widget mobileContainer1(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(children: [
        Container(
          height: h! / 1.2,
          width: w! / 1.2,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(deepak))),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Hi There,"),
            Text(
              "I am Deepak",
              style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: w! / 27),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "and I am a Product Designer",
              style: TextStyle(fontSize: 20, color: Colors.grey[800]),
            ), //typing text inserted
            SizedBox(
              height: 15,
            ),
            Text(
              "Helps you to Grow up Your Success, Our Priority.",
              style: TextStyle(fontSize: 15, color: Colors.grey[700]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: primary),
                onPressed: () => {},
                icon: Icon(Icons.arrow_drop_down),
                label: Text(
                  "Try free demo",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "— Web, iOs and Android",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        )),
      ]),
    );
  }

  Widget desktopContainer1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(children: [
        Expanded(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" Hi There,"),
              Text(
                "I am Deepak kumar",
                style: TextStyle(
                    height: 1.1,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: w! / 25),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "and I am a ",
                    style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                    child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 2000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                        animatedTexts: [
                          TypewriterAnimatedText("UI/UX Designer"),
                          TypewriterAnimatedText('Web Developer'),
                          TypewriterAnimatedText('Application Developer'),
                          TypewriterAnimatedText('Video Editor'),
                          TypewriterAnimatedText('Data Analytics'),
                        ]),
                  ),
                ],
              ),
              //typing text inserted
              SizedBox(
                height: 15,
              ),
              Text(
                "Helps you to Grow up Your Success, Our Priority.",
                style: TextStyle(fontSize: 15, color: Colors.grey[700]),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: primary),
                      onPressed: () => {},
                      icon: Icon(Icons.arrow_drop_down),
                      label: Text(
                        "Try free demo",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "— Web, iOs and Android",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: h! / 20,
              ),
              Container(
                width: w! / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GFIconButton(
                      onPressed: () async => {
                        if (await canLaunchUrl(
                            Uri.https("facebook.com", "/deepak.k.singh.7587")))
                          {
                            await launchUrl(
                              Uri.https("facebook.com", "/deepak.k.singh.7587"),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: WebViewConfiguration(
                                  enableDomStorage: true,
                                  enableJavaScript: true),
                            ),
                          }
                      },
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      shape: GFIconButtonShape.circle,
                    ),
                    GFIconButton(
                      onPressed: () async => {
                        if (await canLaunchUrl(
                            Uri.https("linkedin.com", "/in/mrdeepakk/")))
                          {
                            await launchUrl(
                              Uri.https("linkedin.com", "/in/mrdeepakk/"),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: WebViewConfiguration(
                                  enableDomStorage: true,
                                  enableJavaScript: true),
                            ),
                          }
                      },
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      shape: GFIconButtonShape.circle,
                    ),
                    GFIconButton(
                      onPressed: () async => {
                        if (await canLaunchUrl(
                            Uri.https("instagram.com", "/_mr.deepakk/")))
                          {
                            await launchUrl(
                              Uri.https("instagram.com", "/_mr.deepakk/"),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: WebViewConfiguration(
                                  enableDomStorage: true,
                                  enableJavaScript: true),
                            ),
                          }
                      },
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      shape: GFIconButtonShape.circle,
                    ),
                    GFIconButton(
                      onPressed: () async => {
                        if (await canLaunchUrl(
                            Uri.https("github.com", "/mrDeepakk")))
                          {
                            await launchUrl(
                              Uri.https("github.com", "/mrDeepakk"),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: WebViewConfiguration(
                                  enableDomStorage: true,
                                  enableJavaScript: true),
                            ),
                          }
                      },
                      icon: FaIcon(FontAwesomeIcons.github),
                      shape: GFIconButtonShape.circle,
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
        Expanded(
          child: Container(
            height: 538,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(deepak))),
          ),
        )
      ]),
    );
  }
}
