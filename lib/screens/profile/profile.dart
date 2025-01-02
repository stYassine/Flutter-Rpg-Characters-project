import 'package:flutter/material.dart';
import 'package:two_theme_styles/_theme.dart';
import 'package:two_theme_styles/models/character.dart';
import 'package:two_theme_styles/screens/profile/skill_list.dart';
import 'package:two_theme_styles/screens/profile/stats_table.dart';
import 'package:two_theme_styles/shared/styled_button.dart';
import 'package:two_theme_styles/shared/styled_text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle(character.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // basic info,
             Container(
              padding: const EdgeInsets.all(16),
              color: AppColors.secondaryColor.withOpacity(0.8),
              child: Row(
                children: [
                  Image.asset('assets/images/${character.vocation.image}', width: 140, height: 140),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledHeading(character.vocation.title),
                        StyledText(character.vocation.description),
                      ],
                    ),
                  )
                ],
              ),
             ),

             // weapon and ability & slogan
             const SizedBox(height: 20),
             Center(child: Icon(Icons.code, color: AppColors.primaryAccent)),
             
             Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: AppColors.secondaryColor.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const StyledHeading("Slogan"),
                    StyledText(character.slogan),
                    const SizedBox(height: 10),
                    
                    const StyledHeading("Weapon of Choice"),
                    StyledText(character.vocation.weapon),
                    const SizedBox(height: 10),
                    
                    const StyledHeading("Unique Ability"),
                    StyledText(character.vocation.ability),
                    const SizedBox(height: 10),

                  ],
                ),
              ),
             ),

             // stats & skills
             Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  StatsTable(character),
                  SkillList(character)
                ],
              ),
             ),

             // save button
            StyledButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: StyledHeading("Character was Saved!"),
                    showCloseIcon: true,
                    duration: const Duration(seconds: 2),
                    backgroundColor: AppColors.secondaryColor,
                  )
                );
              }, 
              child: const StyledHeading("Save character")
            ),

            const SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
