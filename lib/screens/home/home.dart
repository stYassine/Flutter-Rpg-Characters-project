import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_theme_styles/screens/create/create.dart';
import 'package:two_theme_styles/shared/character_card.dart';
// shared widgets
import 'package:two_theme_styles/shared/styled_button.dart';
import 'package:two_theme_styles/shared/styled_text.dart';
import 'package:two_theme_styles/state/character_store.dart';

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
              Expanded(
                // we added consumer here, because we only need the data in this list
                child: Consumer<CharacterStore>(builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.characters.length,
                    itemBuilder: (_, index) {
                      return CharacterCard(value.characters[index]);
                    },
                  );
                }),
              ),
              StyledButton(
                  onPressed: () {
                    // navigate to create page
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => const CreatePage()));
                  },
                  child: const StyledHeading("Create New"))
            ],
          )),
    );
  }
}
