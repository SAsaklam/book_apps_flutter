import 'package:books_apps/bangla_screens.dart';
import 'package:books_apps/english_screens.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [BanglaScreens(), EnglishScreens()];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book-Apps"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.book, size: 100, color: Colors.white30),
                  Text("Version: 1", style: TextStyle(color: Colors.amber)),
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Bangla",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: "Bangla",
            backgroundColor: Colors.black54,
          ),
        ],
      ),

      body: pages[_index],
    );
  }
}
