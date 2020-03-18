import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:slamit/HomePage/HomePage.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SlamIt",
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.orange,
            fontFamily: 'Sen',
            appBarTheme: AppBarTheme(
              actionsIconTheme: IconThemeData(
                color: Colors.white,
              ),
              textTheme: TextTheme(
                  title:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
            ),
            cardTheme: CardTheme(
                color: Color.fromARGB(450, 255, 142, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)))),
        home: HomePage());
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
        title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup name generator"),
      ),
      body: _buildSuggestions(),
    );
  }
}
