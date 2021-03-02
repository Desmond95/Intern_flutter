import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  SquareButton({@required this.buttonText, @required this.onPress});

  final String buttonText;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPress,
        elevation: 5.0,
        constraints: BoxConstraints.tightFor(
          width: double.infinity,
          height: 60.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Color(0xFFF4D50A),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ));
  }
}
