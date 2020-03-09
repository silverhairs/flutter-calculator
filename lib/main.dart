import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(Icalculator());

class Icalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: Home(),
    );
  }
}
