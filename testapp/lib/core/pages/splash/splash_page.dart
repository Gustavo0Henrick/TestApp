import 'package:flutter/material.dart';
import 'package:testapp/core/themes/app_color.dart';
import 'package:testapp/core/themes/app_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Center(
        child: Text(
          "App Test",
          style: AppFonts.robotobold48w,
        ),
      ),
    );
  }
}
