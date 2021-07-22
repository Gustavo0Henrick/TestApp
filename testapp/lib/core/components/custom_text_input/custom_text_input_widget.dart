import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextInput extends StatelessWidget {
  final double width;
  final double height;
  final double elevation;
  TextInputType inputType;
  TextEditingController controller;
  bool isPassword;
  bool obscure;
  Function onTap;
  CustomTextInput({
    Key key,
    this.width = 250,
    this.height = 30,
    this.elevation = 5,
    this.isPassword = false,
    this.controller,
    this.obscure,
    this.onTap,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Card(
        elevation: elevation,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            obscureText: isPassword ? obscure : false,
            controller: controller,
            keyboardType: inputType,
            decoration: InputDecoration(
              suffixIcon: isPassword
                  ? GestureDetector(
                      child: obscure
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onTap: onTap,
                    )
                  : null,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
