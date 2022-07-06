import 'package:flutter/material.dart';

class HighScore {
  DateTime date;
  int score;

  HighScore(this.date, this.score);
}

List<HighScore> highScore = [];

List<HighScore> get sorted {
  highScore = highScore..sort((b, a) => a.score.compareTo(b.score));
  return highScore;
}

List word = [
  'altitude',
  'area',
  'breadth',
  'depth',
  'height',
  'rise',
  'space',
  'volume',
  'width',
  'extension',
  'extent',
  'cast',
  'range',
  'reach',
  'scope',
  'shot',
  'sweep',
  'throw',
  'drop',
  'fall',
  'flight',
  'haul',
  'berth',
  'clearance'
];

Map<String, int> alphabets = {
  'A': 0,
  'B': 0,
  'C': 0,
  'D': 0,
  'E': 0,
  'F': 0,
  'G': 0,
  'H': 0,
  'I': 0,
  'J': 0,
  'K': 0,
  'L': 0,
  'M': 0,
  'N': 0,
  'O': 0,
  'P': 0,
  'Q': 0,
  'R': 0,
  'S': 0,
  'T': 0,
  'U': 0,
  'V': 0,
  'W': 0,
  'X': 0,
  'Y': 0,
  'Z': 0
};

List images = [
  Image.asset(
    "assets/images/0.png",
    height: 230,
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/1.png",
    height: 230,
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/2.png",
    height: 230,
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/3.png",
    height: 230,
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/4.png",
    height: 230,
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/5.png",
    height: 230,
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/6.png",
    height: 230,
    fit: BoxFit.cover,
  ),
];
