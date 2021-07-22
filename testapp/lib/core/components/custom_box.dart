import 'package:flutter/material.dart';
import 'package:testapp/core/pages/person.dart';
import 'package:testapp/core/user_list.dart';

class CustomBox extends StatelessWidget {
  final Color color;

  final int id;

  final IconData icon;

  const CustomBox({Key key, this.color = Colors.white, this.icon, this.id})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Person(index: id)));
            },
            child: Card(
              color: Colors.transparent,
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                height: 250,
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      icon,
                      color: color,
                      size: 120,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text(
                          "${ListUser.user[id]}, ${ListUser.year[id]} anos \n${ListUser.city[id]}",
                          style: TextStyle(
                            color: color,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
