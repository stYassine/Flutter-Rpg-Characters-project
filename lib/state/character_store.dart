import 'package:flutter/material.dart';
import 'package:two_theme_styles/models/character.dart';
import 'package:two_theme_styles/models/vocationEnum.dart';

class CharacterStore extends ChangeNotifier {
  
  final List<Character> _characters = [
    Character(
        id: '1', name: 'Klara', slogan: 'Kapmuf!', vocation: Vocation.wizard),
    Character(
        id: '2',
        name: 'jonny',
        slogan: 'Light me up',
        vocation: Vocation.junkie),
    Character(
        id: '3',
        name: 'crimson',
        slogan: 'Fire in the Hole',
        vocation: Vocation.raider),
    Character(
        id: '4',
        name: 'shaun',
        slogan: 'Alright then gang',
        vocation: Vocation.ninja),
  ];

  get characters => _characters;
}
