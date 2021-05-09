import 'package:flutter/material.dart';
import 'package:testapp/core/components/custom_box.dart';
import 'package:testapp/core/user_list.dart';

class Caroussel extends StatefulWidget {
  ValueChanged<int> onChanged;
  @override
  _CarousselState createState() => _CarousselState();
}

class _CarousselState extends State<Caroussel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: PageView(
        onPageChanged: widget.onChanged,
        physics: BouncingScrollPhysics(),
        children: [
          CustomBox(
            color: Colors.blue[800],
            icon: Icons.person,
            id: 3,
          ),
          CustomBox(
            color: Colors.blue[800],
            icon: Icons.person,
            id: 0,
          ),
          CustomBox(
            color: Colors.blue[800],
            icon: Icons.person,
            id: 2,
          ),
        ],
      ),
    );
  }
}
