import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:two_theme_styles/_theme.dart';
import 'package:two_theme_styles/models/character.dart';
import 'package:two_theme_styles/models/vocationEnum.dart';
import 'package:two_theme_styles/screens/create/vocation_card.dart';
import 'package:two_theme_styles/screens/home/home.dart';
import 'package:two_theme_styles/shared/styled_button.dart';
import 'package:two_theme_styles/shared/styled_text.dart';
import 'package:two_theme_styles/state/character_store.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  Vocation selectedVocation = Vocation.junkie;

  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      // show error dialog
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading("Missing Character Name"),
              content:
                  const StyledText("Every good RPG character needs a name."),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading("Close"))
              ],
            );
          });

      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      // show error dialog
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading("Missing Character Slogan"),
              content:
                  const StyledText("Every good RPG character needs a slogan."),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading("Close"))
              ],
            );
          });
      return;
    }

    // characters.add(Character(
    //     id: uuid.v4(),
    //     name: _nameController.text.trim(),
    //     slogan: _sloganController.text.trim(),
    //     vocation: selectedVocation));

  // add character to store
    Provider.of<CharacterStore>(context, listen: false)
      .addCharacter(
        Character(
          id: uuid.v4(),
          name: _nameController.text.trim(),
          slogan: _sloganController.text.trim(),
          vocation: selectedVocation
        )
      );

    Navigator.push(context, MaterialPageRoute(builder: (ctx) => Home()));
  }

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  // lifecycle method
  @override
  void dispose() {
    _nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Character Creation"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // welcome message
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              Center(child: StyledHeading("Welcome, new player.")),
              Center(
                  child: StyledHeading(
                      "Create a name & slogan for your character.")),
              const SizedBox(height: 30),

              // inputs
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    label: StyledText("Character name"),
                    prefixIcon: Icon(Icons.person_2)),
                style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                cursorColor: AppColors.textColor,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _sloganController,
                decoration: InputDecoration(
                    label: StyledText("Character slogan"),
                    prefixIcon: Icon(Icons.chat)),
                style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                cursorColor: AppColors.textColor,
              ),
              SizedBox(height: 30),

              // select vocation title
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              Center(child: StyledHeading("Choose vocation.")),
              Center(child: StyledHeading("This determines your skills.")),
              SizedBox(height: 30),

              // vocation cards
              VocationCard(
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.junkie,
                  vocation: Vocation.junkie),
              VocationCard(
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.ninja,
                  vocation: Vocation.ninja),
              VocationCard(
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.raider,
                  vocation: Vocation.raider),
              VocationCard(
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.wizard,
                  vocation: Vocation.wizard),

              // good luck message
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              Center(child: StyledHeading("Good luck")),
              Center(child: StyledHeading("And enjoy the journey ....")),
              SizedBox(height: 30),

              // submit button
              Center(
                child: StyledButton(
                    onPressed: handleSubmit,
                    child: StyledText("Create character")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
