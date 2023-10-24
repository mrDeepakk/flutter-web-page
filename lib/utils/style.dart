import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

ButtonStyle borderedbutton = ButtonStyle(
    elevation: MaterialStateProperty.all(10),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        side: BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10))));
