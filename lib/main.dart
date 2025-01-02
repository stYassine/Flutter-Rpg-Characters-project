import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Theme
import 'package:two_theme_styles/_theme.dart';

// pages
import 'package:two_theme_styles/screens/home/home.dart';
import 'package:two_theme_styles/state/character_store.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CharacterStore(),
    child: MaterialApp(
      theme: primaryTheme,
      home: Home()
    ),
  ));
}
