import 'package:flutter/material.dart';
import 'package:two_theme_styles/models/character.dart';
import 'package:two_theme_styles/screens/profile/profile.dart';
import 'package:two_theme_styles/shared/styled_text.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Image.asset('assets/images/31343C.png', width: 80),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledHeading(character.name),
              StyledText(character.vocation.title)
            ],
          ),
          const Expanded(
            child: SizedBox()
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (ctx) => Profile(character: character)
                )
              );
            }, 
            icon: Icon(Icons.arrow_forward)
          )
        ],
      ),
    ));
  }
}
