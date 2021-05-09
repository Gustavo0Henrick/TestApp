import 'package:flutter/material.dart';
import 'package:testapp/core/components/custom_textfield.dart';
import 'package:testapp/ui/homepage.dart';
import 'package:testapp/core/user_list.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color color = Colors.blue[800];
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          'Nome',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          '* Dados Incorretos',
                          style: TextStyle(color: color),
                        ),
                      ),
                    ],
                  ),
                  CustomTextfield(
                    password: false,
                    color: Colors.blue[800],
                    controller: userController,
                    height: 45,
                    width: 350,
                    elevation: 5,
                    borderRadius: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40, top: 20),
                        child: Text(
                          'Senha',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          '* Dados Incorretos',
                          style: TextStyle(color: color),
                        ),
                      ),
                    ],
                  ),
                  CustomTextfield(
                    password: true,
                    color: Colors.blue[800],
                    controller: passwordController,
                    height: 45,
                    width: 350,
                    elevation: 5,
                    borderRadius: 5,
                    obscureText: obscureText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lembrar de mim?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                        inactiveThumbColor: Colors.white,
                        activeTrackColor: Colors.white,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        primary: Colors.blue[400],
                      ),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        String name = '';
                        String email = '';
                        bool found = false;
                        for (int i = 0; i < ListUser.user.length; i++) {
                          if (userController.text == ListUser.user[i] &&
                              passwordController.text == ListUser.password[i]) {
                            found = true;
                            name = ListUser.user[i];

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => HomePage(
                                          id: i,
                                          // userName: name.toString(),
                                          // userEmail: email.toString(),
                                        )));
                          } else if (userController.text == ListUser.user[i] &&
                              passwordController.text != ListUser.password[i]) {
                          } else {}
                        }
                        if (found == false) {
                          setState(() {
                            color = Colors.red[900];
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 120,
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
