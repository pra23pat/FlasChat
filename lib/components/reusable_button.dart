import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({@required this.onPressed, this.buttonType, this.color});

  final Function onPressed;
  final String buttonType;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonType,
          ),
        ),
      ),
    );
  }
}
