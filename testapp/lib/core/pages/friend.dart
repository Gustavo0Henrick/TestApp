import 'package:flutter/material.dart';
import 'package:testapp/core/pages/person.dart';
import 'package:testapp/core/user_list.dart';

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
          'Amigos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Person(index: 3)));
              },
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                height: 30,
                width: 30,
                child: Icon(
                  Icons.person,
                  color: Colors.blue[700],
                ),
              ),
              title: Text(
                '${ListUser.name[3]}',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                '${ListUser.email[3]}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Person(index: 0)));
              },
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                height: 30,
                width: 30,
                child: Icon(
                  Icons.person,
                  color: Colors.blue[700],
                ),
              ),
              title: Text(
                '${ListUser.name[0]}',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                '${ListUser.email[0]}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
