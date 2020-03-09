import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputKey extends StatelessWidget {
  InputKey({
    @required this.value,
    @required this.onPressed,
    this.backgroundColor = Colors.white,
  });
  final dynamic value;
  final Color backgroundColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Colors.transparent,
        height: 75,
        width: 75,
        child: RawMaterialButton(
          fillColor: backgroundColor,
          elevation: 5,
          shape: CircleBorder(),
          child: Text(
            '$value',
            style: GoogleFonts.sourceCodePro(
              textStyle: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
