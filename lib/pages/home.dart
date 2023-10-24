import 'package:flutter/material.dart';
import 'package:portfolio/pages/containers/container1.dart';
import 'package:portfolio/pages/containers/container2.dart';
import 'package:portfolio/pages/containers/container3.dart';
import 'package:portfolio/pages/containers/projects.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          child: Column(children: [
            Navbar(),
            Container1(),
            Container2(),
            Container3(),
            Projects(),
          ]),
        ),
      ),
    );
  }
}
