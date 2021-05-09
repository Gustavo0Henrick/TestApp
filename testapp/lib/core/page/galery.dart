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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1.2,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image A',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image C',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image E',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image G',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image I',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 1.2,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image B',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image D',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image F',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image H',
                        ),
                        CustomCard(
                          icon: Icons.image,
                          title: 'Image J',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
