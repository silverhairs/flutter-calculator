import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/keys_row.dart';
import '../components/input_key.dart';
import '../blocs/theme.dart';
import 'package:provider/provider.dart';
import '../utilities/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String output = '0';
  double number2 = 0;
  double number1 = 0;
  double result = 0;
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return CupertinoPageScaffold(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(FontAwesomeIcons.sun, color: Colors.grey),
                CupertinoSwitch(
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = !isDark;
                      isDark
                          ? _themeChanger.setTheme(kDarkTheme)
                          : _themeChanger.setTheme(kLightTheme);
                    });
                  },
                  activeColor: kShiningGreen,
                ),
                Icon(FontAwesomeIcons.moon, color: Colors.grey),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Text(
                      output,
                      style: GoogleFonts.sourceCodePro(
                        textStyle: TextStyle(
                          fontSize: 55,
                          color: Colors.blueGrey,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      output,
                      style: GoogleFonts.sourceCodePro(
                        textStyle: TextStyle(
                          fontSize: 75,
                          color: isDark ? Colors.white : Colors.black,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeysRow(
                    fillColor: Colors.grey[200],
                    child1: 'AC',
                    child2: '+/-',
                    child3: '%',
                    child4: '/',
                    onPressedChild1: () {
                      setState(() {
                        result = 0;
                        output = result.toString();
                      });
                    },
                    onPressedChild2: () {
                      setState(() {
                        result *= -1;
                        output = result.toString();
                      });
                    },
                    onPressedChild3: () {
                      setState(() {
                        result = result / 100;
                        output = result.toString();
                      });
                    },
                    onPressedChild4: () {
                      print('Division');
                    },
                  ),
                  KeysRow(
                    fillColor: Colors.grey[50],
                    child1: 1,
                    child2: 2,
                    child3: 3,
                    child4: 'X',
                    onPressedChild1: () {
                      setState(() {
                        result += 1;
                        output = result.toString();
                      });
                    },
                    onPressedChild2: () {
                      setState(() {
                        result += 2;
                        output = result.toString();
                      });
                    },
                    onPressedChild3: () {
                      print('Three');
                    },
                    onPressedChild4: () {
                      print('Multiply');
                    },
                  ),
                  KeysRow(
                    fillColor: Colors.grey[50],
                    child1: 4,
                    child2: 5,
                    child3: 6,
                    child4: '-',
                    onPressedChild1: () {
                      setState(() {
                        result += 4;
                        output = result.toString();
                      });
                    },
                    onPressedChild2: () {
                      print('Five');
                    },
                    onPressedChild3: () {
                      print('Six');
                    },
                    onPressedChild4: () {
                      print('Minus');
                    },
                  ),
                  KeysRow(
                    fillColor: Colors.grey[50],
                    child1: 7,
                    child2: 8,
                    child3: 9,
                    child4: '+',
                    onPressedChild1: () {
                      print('Seven');
                    },
                    onPressedChild2: () {
                      print('Eight');
                    },
                    onPressedChild3: () {
                      print('Nine');
                    },
                    onPressedChild4: () {
                      print('Plus');
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        height: 75,
                        width: 175,
                        child: RawMaterialButton(
                          elevation: 5,
                          fillColor: Colors.grey[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Text(
                            '0',
                            style: GoogleFonts.sourceCodePro(
                              textStyle: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                              ),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          onPressed: () {
                            print('Zero');
                          },
                        ),
                      ),
                      InputKey(
                        value: '.',
                        onPressed: () {
                          print('Dot');
                        },
                        backgroundColor: Colors.grey[50],
                      ),
                      InputKey(
                        value: '=',
                        onPressed: () {
                          print('Equal');
                        },
                        backgroundColor: Color(0xFFFB9603),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
