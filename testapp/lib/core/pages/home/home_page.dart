import 'package:flutter/material.dart';
import 'package:testapp/core/themes/app_color.dart';
import 'package:testapp/core/themes/app_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List _screens = [
    Container(color: AppColors.darkBlue),
    Container(color: AppColors.darkBlue),
    Container(color: AppColors.darkBlue),
    Container(color: AppColors.darkBlue),
    Container(color: AppColors.darkBlue),
  ];

  void _updateCurrentIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.darkBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.darkBlue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.menu),
          ),
          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                height: 30,
                width: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  margin: EdgeInsets.zero,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    enableFeedback: true,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: AppColors.grey,
                          ),
                          Text(
                            " Buscar...",
                            style: AppFonts.robotoregular18g,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: _screens[_currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: AppColors.lightBlue,
          heroTag: "btn1",
          onPressed: () => _updateCurrentIndex(4),
          child: Icon(
            Icons.home,
            size: 40,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: AppColors.white,
          elevation: 0,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.account_circle_rounded,
                      size: _currentIndex == 0 ? 30 : 25,
                      color: _currentIndex == 0
                          ? AppColors.darkBlue
                          : AppColors.grey),
                  onPressed: () => _updateCurrentIndex(0),
                ),
                IconButton(
                  icon: Icon(Icons.grid_view,
                      size: _currentIndex == 1 ? 30 : 25,
                      color: _currentIndex == 1
                          ? AppColors.darkBlue
                          : AppColors.grey),
                  onPressed: () => _updateCurrentIndex(1),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(Icons.supervisor_account_rounded,
                      size: _currentIndex == 2 ? 30 : 25,
                      color: _currentIndex == 2
                          ? AppColors.darkBlue
                          : AppColors.grey),
                  onPressed: () => _updateCurrentIndex(2),
                ),
                IconButton(
                  icon: Icon(Icons.notifications_sharp,
                      size: _currentIndex == 3 ? 30 : 25,
                      color: _currentIndex == 3
                          ? AppColors.darkBlue
                          : AppColors.grey),
                  onPressed: () => _updateCurrentIndex(3),
                ),
              ],
            ),
          ),
        ));
  }
}
