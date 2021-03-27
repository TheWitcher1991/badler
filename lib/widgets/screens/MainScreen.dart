import 'package:flutter/material.dart';
import 'package:badler/widgets/pages/MessagesPage.dart';
import 'package:badler/widgets/pages/GroupPage.dart';
import 'package:badler/widgets/pages/ChannelPage.dart';
// import 'package:badler/widgets/ProfilePage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentPage = 0;

  var _pages = [
    MessagesPage(),
    GroupPage(),
    ChannelPage()
    // ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: _pages.elementAt(_currentPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Сообщения"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("Группы"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_outlined),
            title: Text("Каналы"),
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_rounded),
            title: Text("Профиль"),
          ),*/
        ],
        currentIndex: _currentPage,
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
