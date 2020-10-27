import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RandomWordsState();
  }

}

class RandomWordsState extends State<RandomWords>{
  final _suggestion = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final wordPair2 = new WordPair.random();
    return _buildSuggestion();
  }
  Widget _buildSuggestion(){
    return ListView.builder(
      itemBuilder: (context, i){
        if (i >- _suggestion.length){
          _suggestion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestion[i]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(pair.asPascalCase),
    );
  }

}