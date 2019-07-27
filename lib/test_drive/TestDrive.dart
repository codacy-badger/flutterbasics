import 'package:flutter/material.dart';

/*
 * This widget is the home page of your application. It is stateful, meaning
 * that it has a State object defined below that contains fields that affect how
 * it looks.
 *
 * This class is the configuration for the state. It holds the values (in this
 * case the title) provided by the parent (in this case the App widget) and used
 * by the build method of the State. Fields in a Widget subclass are always
 * marked "final".
 */
class TestDrive extends StatefulWidget {
  TestDrive({Key key, this.title}) : super(key: key);
  final String title;

  @override _TestDriveState createState() => _TestDriveState();
}

class _TestDriveState extends State<TestDrive> {
  int _counter = 0;

  /*
   * This method is rerun every time setState is called, for instance as done by
   * the _incrementCounter method below.
   *
   * The Flutter framework has been optimized to make rerunning build methods
   * fast, so that you can just rebuild anything that needs updating rather than
   * having to individually change instances of widgets.
   */
  @override Widget build(context) => Scaffold(
    appBar: AppBar(
      title: Text("Test Drive"),
    ),

    // Center is a layout widget. It takes a single child and positions it in
    // the middle of the parent.
    body: Center(

      // Column is also layout widget. It takes a list of children and arranges \
      // them vertically. By default, it sizes itself to fit its children
      // horizontally, and tries to be as tall as its parent.
      //
      // Column has various properties to control how it sizes itself and how it
      // positions its children. Here we use mainAxisAlignment to center the
      // children vertically; the main axis here is the vertical axis because
      // Columns are vertical (the cross axis would be horizontal).
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have clicked the button this many times:',),
          Text('$_counter', style: Theme.of(context).textTheme.display1,),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );

  /*
   * This call to setState tells the Flutter framework that something has
   * changed in this State, which causes it to rerun the build method below so
   * that the display can reflect the updated values. If we changed _counter
   * without calling setState(), then the build method would not be called
   * again, and so nothing would appear to happen.
   */
  void _incrementCounter() => setState(() {
    _counter++;
  });
}