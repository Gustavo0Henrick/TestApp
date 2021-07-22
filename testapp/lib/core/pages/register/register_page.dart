import 'package:flutter/material.dart';
import 'package:testapp/core/components/custom_auth_button.dart';
import 'package:testapp/core/components/custom_text_input/custom_text_input_widget.dart';
import 'package:testapp/core/themes/app_color.dart';
import 'package:testapp/core/themes/app_fonts.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedController = TextEditingController();

  bool obscure = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cadastrar",
          style: AppFonts.robotobold20w,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.white,
          icon: Icon(Icons.close),
        ),
        elevation: 0,
        backgroundColor: AppColors.darkBlue,
      ),
      backgroundColor: AppColors.darkBlue,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: size.width * 0.7,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Nome",
                        style: AppFonts.robotobold14w,
                      ),
                    ),
                    CustomTextInput(
                      elevation: 5,
                      height: 30,
                      width: size.width * 0.7,
                      isPassword: false,
                      inputType: TextInputType.name,
                      controller: nameController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Email",
                        style: AppFonts.robotobold14w,
                      ),
                    ),
                    CustomTextInput(
                      elevation: 5,
                      height: 30,
                      width: size.width * 0.7,
                      isPassword: false,
                      inputType: TextInputType.emailAddress,
                      controller: emailController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Senha",
                        style: AppFonts.robotobold14w,
                      ),
                    ),
                    CustomTextInput(
                      elevation: 5,
                      height: 30,
                      width: size.width * 0.7,
                      isPassword: true,
                      obscure: obscure,
                      onTap: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      inputType: TextInputType.text,
                      controller: passwordController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Confirmar senha",
                        style: AppFonts.robotobold14w,
                      ),
                    ),
                    CustomTextInput(
                      elevation: 5,
                      height: 30,
                      width: size.width * 0.7,
                      isPassword: true,
                      obscure: obscure,
                      onTap: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      inputType: TextInputType.text,
                      controller: confirmedController,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: AppColors.darkBlue,
                          activeColor: AppColors.white,
                          value: checkboxValue,
                          onChanged: (value) {
                            setState(() {
                              checkboxValue = value;
                            });
                          }),
                      Text(
                        "Li e concordo com os Termos de Uso",
                        style: AppFonts.robotobold14w,
                      )
                    ],
                  ),
                ),
                CustomAuthButton(
                  padding: 5,
                  style: AppFonts.robotoregular18b,
                  text: "Cadastrar",
                  color: AppColors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
