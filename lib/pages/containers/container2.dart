import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/style.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileContainer2,
      desktop: desktopContainer2,
      tablet: desktopContainer2,
    );
  }

  Widget mobileContainer2(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      child: Column(children: [
        Container(
          height: h! / 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("About ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: h! / 20)),
              Text(" me",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontSize: h! / 20)),
            ],
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              height: h! / 2.2,
              width: h! / 2.2,
              // color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(profile)),
                  border: Border.all(
                      color: Colors.black12, style: BorderStyle.solid))),
          SizedBox(
            height: 10,
          ),
          Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                    textDirection: TextDirection.ltr,
                    '''Myself DEEPAK KUMAR. I am A B.tech Computer Science & Engineering (CSE) 3rd year student of Lovely Professional University. Intuitive problem-solving abilities with strong development and integration abilities. I wish to work as a Software Developer.''',
                    style: TextStyle(
                        height: 1,
                        wordSpacing: 1,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                      style: borderedbutton,
                      onPressed: () => {},
                      child: Text(
                        "More About us",
                        style: TextStyle(fontSize: 18, color: primary),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
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
                )
              ])
        ]),
      ]),
    );
  }

  Widget desktopContainer2(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      child: Column(children: [
        Container(
          height: h! / 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("About ",
                  style: TextStyle(
                      height: 1,
                      wordSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: w! / 30)),
              Text(" me",
                  style: TextStyle(
                      height: 1,
                      wordSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontSize: w! / 30)),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: w! / 10),
                      height: h! / 2.2,
                      width: h! / 2.2,
                      // color: Colors.red,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(profile)),
                          border: Border.all(
                              color: Colors.black12,
                              style: BorderStyle.solid))),
                  Container(
                    margin: EdgeInsets.only(top: h! / 10),
                    width: w! / 2,
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                            textDirection: TextDirection.ltr,
                            '''Myself DEEPAK KUMAR. I am A B.tech Computer Science & Engineering (CSE) 3rd year student of Lovely Professional University. Intuitive problem-solving abilities with strong development and integration abilities. I wish to work as a Software Developer.''',
                            style: TextStyle(
                                height: 1,
                                wordSpacing: 1,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: w! / 45),
                          ),
                          SizedBox(
                            height: h! / 40,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton(
                                style: borderedbutton,
                                onPressed: () => {},
                                child: Text(
                                  "More About us",
                                  style:
                                      TextStyle(fontSize: 18, color: primary),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: h! / 45,
                                    left: w! / 60,
                                    right: w! / 60,
                                  ),
                                  child: GFIconButton(
                                    onPressed: () async => {
                                      if (await canLaunchUrl(Uri.https(
                                          "facebook.com",
                                          "/deepak.k.singh.7587")))
                                        {
                                          await launchUrl(
                                            Uri.https("facebook.com",
                                                "/deepak.k.singh.7587"),
                                            mode: LaunchMode.platformDefault,
                                            webViewConfiguration:
                                                WebViewConfiguration(
                                                    enableDomStorage: true,
                                                    enableJavaScript: true),
                                          ),
                                        }
                                    },
                                    icon: FaIcon(FontAwesomeIcons.facebook),
                                    shape: GFIconButtonShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: h! / 45,
                                    left: w! / 60,
                                    right: w! / 60,
                                  ),
                                  child: GFIconButton(
                                    onPressed: () async => {
                                      if (await canLaunchUrl(Uri.https(
                                          "linkedin.com", "/in/mrdeepakk/")))
                                        {
                                          await launchUrl(
                                            Uri.https("linkedin.com",
                                                "/in/mrdeepakk/"),
                                            mode: LaunchMode.platformDefault,
                                            webViewConfiguration:
                                                WebViewConfiguration(
                                                    enableDomStorage: true,
                                                    enableJavaScript: true),
                                          ),
                                        }
                                    },
                                    icon: FaIcon(FontAwesomeIcons.linkedin),
                                    shape: GFIconButtonShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: h! / 45,
                                    left: w! / 60,
                                    right: w! / 60,
                                  ),
                                  child: GFIconButton(
                                    onPressed: () async => {
                                      if (await canLaunchUrl(Uri.https(
                                          "instagram.com", "/_mr.deepakk/")))
                                        {
                                          await launchUrl(
                                            Uri.https("instagram.com",
                                                "/_mr.deepakk/"),
                                            mode: LaunchMode.platformDefault,
                                            webViewConfiguration:
                                                WebViewConfiguration(
                                                    enableDomStorage: true,
                                                    enableJavaScript: true),
                                          ),
                                        }
                                    },
                                    icon: FaIcon(FontAwesomeIcons.instagram),
                                    shape: GFIconButtonShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: h! / 45,
                                    left: w! / 60,
                                    right: w! / 60,
                                  ),
                                  child: GFIconButton(
                                    onPressed: () async => {
                                      if (await canLaunchUrl(Uri.https(
                                          "github.com", "/mrDeepakk")))
                                        {
                                          await launchUrl(
                                            Uri.https(
                                                "github.com", "/mrDeepakk"),
                                            mode: LaunchMode.platformDefault,
                                            webViewConfiguration:
                                                WebViewConfiguration(
                                                    enableDomStorage: true,
                                                    enableJavaScript: true),
                                          ),
                                        }
                                    },
                                    icon: FaIcon(FontAwesomeIcons.github),
                                    shape: GFIconButtonShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  )
                ]),
          ),
        ),
      ]),
    );
  }
}
