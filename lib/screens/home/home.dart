import 'package:flutter/material.dart';
import 'package:two_theme_styles/models/character.dart';
import 'package:two_theme_styles/screens/create/create.dart';
import 'package:two_theme_styles/shared/character_card.dart';
// shared widgets
import 'package:two_theme_styles/shared/styled_button.dart';
import 'package:two_theme_styles/shared/styled_text.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List characters = ['mario', 'luigi', 'peach', 'toad', 'bowser', 'koopa'];

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
              Expanded(
                child: ListView.builder(
                  itemCount: characters.length,
                  itemBuilder: (_, index) {
                    return CharacterCard(characters[index]);
                    // return Container(
                    //   color: Colors.grey[800],
                    //   padding: const EdgeInsets.all(40),
                    //   margin: const EdgeInsets.only(bottom: 40),
                    //   child: Text(characters[index])
                    // );
                  },
                ),
              ),
              StyledButton(
                  onPressed: () {
                    // navigate to create page
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (ctx) => const Create()
                      )
                    );
                  },
                  child: const StyledHeading("Create New"))
            ],
          )),
    );
  }
}
