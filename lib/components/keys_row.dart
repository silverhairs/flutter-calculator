import 'package:flutter/cupertino.dart';
import 'input_key.dart';

class KeysRow extends StatelessWidget {
  KeysRow({
    @required this.child1,
    @required this.child2,
    @required this.child3,
    @required this.child4,
    @required this.onPressedChild1,
    @required this.onPressedChild2,
    @required this.onPressedChild3,
    @required this.onPressedChild4,
    this.fillColor,
  });
  final dynamic child1;
  final dynamic child2;
  final dynamic child3;
  final dynamic child4;
  final Function onPressedChild1;
  final Function onPressedChild2;
  final Function onPressedChild3;
  final Function onPressedChild4;
  final Color fillColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InputKey(
          value: '$child1',
          onPressed: onPressedChild1,
          backgroundColor: fillColor,
        ),
        InputKey(
          value: '$child2',
          onPressed: onPressedChild2,
          backgroundColor: fillColor,
        ),
        InputKey(
          value: '$child3',
          onPressed: onPressedChild3,
          backgroundColor: fillColor,
        ),
        InputKey(
          value: '$child4',
          onPressed: onPressedChild4,
          backgroundColor: Color(0xFFFB9603),
        ),
      ],
    );
  }
}
