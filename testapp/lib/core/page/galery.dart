import 'package:flutter/material.dart';
import 'package:testapp/core/components/custom_card.dart';

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        title: Text(
          'Sua Galeria',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 1,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: CustomCard(
                    icon: Icons.image,
                    title: 'Image $index',
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
