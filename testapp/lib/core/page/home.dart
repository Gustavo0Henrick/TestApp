import 'package:flutter/material.dart';
import 'package:testapp/core/components/Caroussel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Column(
        children: [
          Center(
            child: Container(
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.blue[800],
                    ),
                    Text(
                      'Buscar perfil',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.blue[800],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.72,
            width: MediaQuery.of(context).size.width * 1,
            child: Caroussel(),
          ),
        ],
      ),
    );
  }
}
