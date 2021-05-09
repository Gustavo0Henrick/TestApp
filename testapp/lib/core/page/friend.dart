import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Friends',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Lista de Amigos vazia',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
