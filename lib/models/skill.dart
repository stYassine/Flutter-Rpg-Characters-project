import 'package:two_theme_styles/models/vocationEnum.dart';

class Skill {
  final String id;
  final String name;
  final String image;
  final Vocation vocation;

  // constructor
  Skill(
      {required this.id,
      required this.name,
      required this.image,
      required this.vocation});
}

final List<Skill> allSkills = [
  // Algo wizard skills
  Skill(id: '1', name: 'Brute Force Bolt', image: '31343C.png', vocation: Vocation.wizard),
  Skill(id: '2', name: 'Recursive Wave', image: '31343C.png', vocation: Vocation.wizard),
  Skill(id: '3', name: 'Hash Beam', image: '31343C.png', vocation: Vocation.wizard),
  Skill(id: '4', name: 'Backtrack', image: '31343C.png', vocation: Vocation.wizard),
  
  // terminal raider skills
  Skill(id: '5', name: 'Lethal Touch', image: '31343C.png', vocation: Vocation.raider),
  Skill(id: '6', name: 'Sudo Blast', image: '31343C.png', vocation: Vocation.raider),
  Skill(id: '7', name: 'Full Clear', image: '31343C.png', vocation: Vocation.raider),
  Skill(id: '8', name: 'Support Shell', image: '31343C.png', vocation: Vocation.raider),
  
  // code junkie skills
  Skill(id: '9', name: 'Infinity Loop', image: '31343C.png', vocation: Vocation.junkie),
  Skill(id: '10', name: 'Type Cast', image: '31343C.png', vocation: Vocation.junkie),
  Skill(id: '11', name: 'Encapsulate', image: '31343C.png', vocation: Vocation.junkie),
  Skill(id: '12', name: 'Copy & Paste', image: '31343C.png', vocation: Vocation.junkie),
  
  // ux ninja skills
  Skill(id: '13', name: 'Gamify', image: '31343C.png', vocation: Vocation.ninja),
  Skill(id: '14', name: 'Heat Map', image: '31343C.png', vocation: Vocation.ninja),
  Skill(id: '15', name: 'Wireframe', image: '31343C.png', vocation: Vocation.ninja),
  Skill(id: '16', name: 'Dark Pattern', image: '31343C.png', vocation: Vocation.ninja),

];

























