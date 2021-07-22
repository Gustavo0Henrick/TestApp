import 'package:flutter/material.dart';
import 'package:testapp/core/themes/app_color.dart';
import 'package:testapp/core/themes/app_fonts.dart';

class CustomAuthButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  Color color;
  double padding;
  VoidCallback onPressed;
  CustomAuthButton({
    Key key,
    this.padding,
    this.text,
    this.style,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        primary: color,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
