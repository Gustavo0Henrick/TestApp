import 'package:flutter/material.dart';
import 'package:testapp/core/components/custom_text_input/custom_text_input_widget.dart';
import 'package:testapp/core/components/custom_auth_button.dart';
import 'package:testapp/core/components/custom_switch_row/custom_switch_row.dart';
import 'package:testapp/core/themes/app_color.dart';
import 'package:testapp/core/themes/app_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool obscure = false;
  bool isPassword = true;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Text("Login", style: AppFonts.robotobold20w),
              ),
              Center(
                child: Container(
                  height: size.height * 0.5,
                  width: size.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Email", style: AppFonts.robotoregular18w),
                      ),
                      CustomTextInput(
                        inputType: TextInputType.emailAddress,
                        controller: emailController,
                        elevation: 5,
                        height: 30,
                        width: size.width,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                        child: Text("Senha", style: AppFonts.robotoregular18w),
                      ),
                      CustomTextInput(
                        controller: passwordController,
                        elevation: 5,
                        height: 30,
                        width: size.width,
                        isPassword: true,
                        obscure: obscure,
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                      ),
                      Container(
                        width: size.width,
                        child: CustomSwitchRow(
                          text: "Lembrar usuário?",
                          switchValue: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CustomAuthButton(
                      text: "Entrar",
                      padding: 20,
                      color: AppColors.lightBlue,
                      style: AppFonts.robotoregular18w,
                      onPressed: () {
                        Navigator.pushNamed(context, "/home_page");
                      },
                    ),
                    CustomAuthButton(
                      text: "Cadastrar",
                      padding: 5,
                      color: AppColors.white,
                      style: AppFonts.robotoregular18b,
                      onPressed: () {
                        Navigator.pushNamed(context, "/register_page");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
