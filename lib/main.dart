import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_magazine/screens/DetailScreen.dart';
import 'package:flutter_magazine/screens/HomeScreen.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int tabIndex = 0;
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarBrightness: Brightness.light));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magazine.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/details': (context) => DetailScreen(),
      },
      // home: DetailScreen(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            listScreens[tabIndex],
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: BottomNavigationBar(
                      selectedItemColor: Colors.white,
                      unselectedItemColor: Colors.grey[400],
                      backgroundColor: Colors.black,
                      currentIndex: tabIndex,
                      unselectedLabelStyle: TextStyle(fontSize: 16.0),
                      selectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                      onTap: (int index) {
                        setState(() {
                          tabIndex = index;
                        });
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(
                            Icons.widgets,
                            size: 30.0,
                          ),
                          label: 'Store',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            Icons.bookmark_border,
                            size: 30.0,
                          ),
                          label: 'Favourite',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            Icons.shopping_basket,
                            size: 30.0,
                          ),
                          label: 'Cart',
                        ),
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
