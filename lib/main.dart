import 'package:flutter/material.dart';

// Theme
import 'package:two_theme_styles/_theme.dart';

// pages
import 'package:two_theme_styles/screens/home/home.dart';
import 'package:two_theme_styles/screens/create/create.dart';


void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: Home()
  ));
}
