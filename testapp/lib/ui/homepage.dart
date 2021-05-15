import 'package:flutter/material.dart';
import 'package:testapp/core/page/config.dart';
import 'package:testapp/core/page/friend.dart';
import 'package:testapp/core/page/home.dart';
import 'package:testapp/core/page/profile.dart';
import 'package:testapp/core/page/galery.dart';

class HomePage extends StatefulWidget {
  final int id;

  const HomePage({Key key, @required this.id}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Profile(),
    Friend(),
    Galery(),
    Config(),
  ];
  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
      floatingActionButton: Container(
        height: 64,
        width: 64,
        child: FloatingActionButton(
          heroTag: null,
          backgroundColor: Colors.blueAccent[300],
          onPressed: () {
            setState(() {
              currentScreen = Home();
              currentTab = 0;
            });
          },
          child: Icon(
            Icons.home_rounded,
            color: Colors.white,
            size: 34,
          ),
          elevation: 10,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile(
                          index: widget.id,
                        );
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 1
                              ? Colors.blue[900]
                              : Colors.blue[400],
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.blue[900]
                                  : Colors.blue[400],
                              fontWeight: currentTab == 1
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Friend();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.group,
                          color: currentTab == 2
                              ? Colors.blue[900]
                              : Colors.blue[400],
                        ),
                        Text(
                          'Friend',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.blue[900]
                                  : Colors.blue[400],
                              fontWeight: currentTab == 2
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Galery();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image,
                          color: currentTab == 3
                              ? Colors.blue[900]
                              : Colors.blue[400],
                        ),
                        Text(
                          'Galery',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.blue[900]
                                  : Colors.blue[400],
                              fontWeight: currentTab == 3
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = Config();
                          currentTab = 4;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 4
                              ? Colors.blue[900]
                              : Colors.blue[400],
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              color: currentTab == 4
                                  ? Colors.blue[900]
                                  : Colors.blue[400],
                              fontWeight: currentTab == 4
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
    );
  }
}
