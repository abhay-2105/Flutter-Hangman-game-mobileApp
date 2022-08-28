import 'package:flutter/material.dart';
import 'package:hangman/Screens/dummy_data.dart';
import 'package:hangman/Screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'Screens/high_scores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: HighScoreItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hangman',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
        initialRoute: 'homePage',
        routes: {
          'homePage': (context) => const HomeScreen(),
          'scorePage': (context) => const HighScoreScreen(),
        },
      ),
    );
  }
}
