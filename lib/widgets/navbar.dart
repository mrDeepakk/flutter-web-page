import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      // breakpoints:
      mobile: mobileNavbar,
      desktop: desktopNavbar,
    );
  }

  Widget mobileNavbar(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(child: navlogo()),
        IconButton(
          onPressed: () => {
            Drawer(
              backgroundColor: Colors.black,
            ),
          },
          icon: Icon(Icons.menu),
        )
      ]),
    );
  }

  Widget desktopNavbar(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        navlogo(),
        Row(
          children: [
            navButton("Home"),
            navButton("About us"),
            navButton("Services"),
            navButton("Portfolio"),
          ],
        ),
        Container(
          height: 45,
          child: ElevatedButton(
              style: borderedbutton,
              onPressed: () {},
              child: Text(
                "Contact us",
                style: TextStyle(fontSize: 18, color: primary),
              )),
        )
      ]),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () => {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget navlogo() {
    return InkWell(
      onTap: () {},
      child: Container(
          width: 110,
          child: DefaultTextStyle(
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                WavyAnimatedText(
                  "StartUp",
                )
              ],
            ),
          )),
    );
  }
}
