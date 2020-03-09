import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iCalculator/blocs/theme.dart';
import 'package:iCalculator/utilities/constants.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';

void main() => runApp(Icalculator());

class Icalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(kLightTheme),
      child: CupertinoAppWithTheme(),
    );
  }
}

class CupertinoAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return CupertinoApp(
      theme: theme.getTheme,
      home: Home(),
    );
  }
}
