import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp2 extends StatefulWidget {

  @override _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  final List<WordPair> _suggestions = new List();
  final Set<WordPair> _saved = new Set();
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override Widget build(context) => Scaffold(
    appBar: AppBar(
      title: const Text('Welcome to Flutter'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: _pushSaved,
        ),
      ],
    ),
    body: Center(
      child: _buildSuggestions(),
    ),
  );

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map((WordPair pair) {
            return ListTile(title: Text(pair.asPascalCase, style: _biggerFont));
          });
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  Widget _buildSuggestions() {
    final WordPair wordPair = WordPair.random();
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i) {
        final int index = i ~/ 2;

        if (i.isOdd) return Divider();
        if (index >= _suggestions.length)
          _suggestions.addAll(generateWordPairs().take(10));

        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair); // Add this line.

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          alreadySaved ? _saved.remove(pair) : _saved.add(pair);
        });
      },
    );
  }
}