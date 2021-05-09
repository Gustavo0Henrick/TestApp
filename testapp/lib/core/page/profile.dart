import 'package:flutter/material.dart';
import 'package:testapp/core/user_list.dart';

class Profile extends StatelessWidget {
  final int index;

  const Profile({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 120,
                ),
              ],
            ),
            Text(
              "Olá, ${ListUser.user[index]}!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.4,
                // decoration: BoxDecoration(
                //   color: Colors.blue[800],
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'UserID: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          ListUser.id[1],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Nome: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          ListUser.name[1],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Email: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          ListUser.email[1],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Idade: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          ListUser.year[1],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Data de Nascimento: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          ListUser.birthDate[1],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: 'Bio: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ListUser.bio[1],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
