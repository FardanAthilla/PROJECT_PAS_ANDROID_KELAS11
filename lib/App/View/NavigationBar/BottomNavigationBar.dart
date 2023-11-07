import 'package:flutter/material.dart';
import 'package:project_pas/App/View/Menu/CartPage.dart';
import 'package:project_pas/App/View/Menu/HomePage.dart';
import 'package:project_pas/App/View/Menu/NewsPage.dart';
import 'package:project_pas/App/View/Menu/ProfilePage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    NewsPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'image/logo2.png',
              width: 100,
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 30,
              onPressed: () {
                // Aksi yang ingin Anda jalankan ketika hamburger (menu) ditekan
              },
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.white.withOpacity(0.3),
            height: 1.0,
          ),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: const Color.fromRGBO(255, 255, 255, 0.6),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
            ),
            label: 'News',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      extendBody: true,
      bottomSheet: Container(
        height: 0.5,
        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
      ),
    );
  }
}
