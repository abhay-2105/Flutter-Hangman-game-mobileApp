import 'package:flutter/material.dart';
import 'package:hangman/Screens/dummy_data.dart';

class HighScoreScreen extends StatefulWidget {
  const HighScoreScreen({Key? key}) : super(key: key);

  @override
  State<HighScoreScreen> createState() => _HighScoreScreenState();
}

class _HighScoreScreenState extends State<HighScoreScreen> {
  late int rank;

  List<HighScore> hs = sorted;

  @override
  void initState() {
    rank = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.deepPurple.shade900,
          // appBar: AppBar(
          //   title: const Text('High Score'),
          // ),
          body: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          )),
                      const Text(
                        '      High Scores',
                        style: TextStyle(
                            fontFamily: "PatrickHand",
                            fontSize: 35,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Rank',
                            style: TextStyle(
                                fontFamily: "PatrickHand",
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          Text(
                            'Date',
                            style: TextStyle(
                                fontFamily: "PatrickHand",
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          Text(
                            'Score',
                            style: TextStyle(
                                fontFamily: "PatrickHand",
                                fontSize: 30,
                                color: Colors.white),
                          )
                        ],
                      ),
                      ...hs.map((e) {
                        rank = rank + 1;
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                rank.toString(),
                                style: const TextStyle(
                                    fontFamily: "PatrickHand",
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                e.date.toString().substring(0, 10),
                                style: const TextStyle(
                                    fontFamily: "PatrickHand",
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                e.score.toString(),
                                style: const TextStyle(
                                    fontFamily: "PatrickHand",
                                    fontSize: 20,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        );
                      }),
                    ]),
                  ),
                ],
              ))),
    );
  }
}
