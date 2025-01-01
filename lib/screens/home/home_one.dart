import 'package:flutter/material.dart';
// shared widgets
import 'package:two_theme_styles/shared/styled_button.dart';
import 'package:two_theme_styles/shared/styled_text.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Your Characters"),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const StyledText("Characters List"),
              const StyledHeading("Characters List"),
              const StyledTitle("Characters List"),
              StyledButton(
                onPressed: () {}, 
                child: const StyledHeading("Create New")
              )
            ],
          )),
    );
  }
}
