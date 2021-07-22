import 'package:flutter/material.dart';
import 'package:testapp/core/themes/app_color.dart';
import 'package:testapp/core/themes/app_fonts.dart';

class CustomSwitchRow extends StatelessWidget {
  bool switchValue;
  String text;
  Function onChanged;
  CustomSwitchRow({
    Key key,
    this.switchValue,
    this.text,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppFonts.robotobold14w),
        Switch(
          value: switchValue,
          onChanged: onChanged,
          inactiveThumbColor: AppColors.white,
          activeTrackColor: AppColors.white,
          activeColor: AppColors.white,
        ),
      ],
    );
  }
}
