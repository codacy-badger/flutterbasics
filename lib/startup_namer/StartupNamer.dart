import 'package:flutter/material.dart';

import 'part_1/MyApp1.dart';
import 'part_2/MyApp2.dart';

class StartupNamer extends StatefulWidget {

  @override _StartupNamerState createState() => _StartupNamerState();
}

class _StartupNamerState extends State<StartupNamer> {

  //@override Widget build(context) => MyApp1();
  @override Widget build(context) => MyApp2();
}