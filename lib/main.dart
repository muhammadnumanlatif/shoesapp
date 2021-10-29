import 'package:flutter/material.dart';
import 'package:shoesapp/bottom_nav_bar.dart';
import 'package:shoesapp/pages/home_page.dart';
import 'package:shoesapp/pages/profile_page.dart';
import 'package:shoesapp/pages/search_page.dart';
import 'package:shoesapp/pages/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: NavigationContainer(),
    );
  }
}

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;

  List<Widget> _appPages = [
    HomePage(),
    SearchPage(),
    ShopPage(),
    ProfilePage(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
