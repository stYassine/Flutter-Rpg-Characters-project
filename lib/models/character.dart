import 'package:two_theme_styles/models/skill.dart';
import 'package:two_theme_styles/models/statsMixing.dart';
import 'package:two_theme_styles/models/vocationEnum.dart';

class Character with Stats {
  // constructor
  Character(
      {required this.id,
      required this.name,
      required this.slogan,
      required this.vocation});

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String id;
  final String name;
  final String slogan;
  // _ to make the field private
  bool _isFav = false;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }

  // getters
  bool get isFav => _isFav;
}

/// NOTES
// mixing in dart is a collection of fields & methods that can be use by other classes
// no need to inheratance

// dummy data
List<Character> characters = [
  Character(id: '1', name: 'Klara', slogan: 'Kapmuf!', vocation: Vocation.wizard),
  Character(id: '2', name: 'jonny', slogan: 'Light me up', vocation: Vocation.junkie),
  Character(id: '3', name: 'crimson', slogan: 'Fire in the Hole', vocation: Vocation.raider),
  Character(id: '4', name: 'shaun', slogan: 'Alright then gang', vocation: Vocation.ninja),
];
