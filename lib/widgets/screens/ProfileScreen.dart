import 'package:flutter/material.dart';
import 'package:badler/db/user.dart';
import 'package:badler/animations/FadeAnimation.dart';
import 'package:badler/widgets/components/more.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = user['name'];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: MediaQuery.of(context).size.height / 3,
          child: FadeAnimation(0.2, Container( 
            decoration: BoxDecoration(
              image: DecorationImage(
                image: user['img'],
                fit: BoxFit.cover
              )
            )
          ),
        )),
        Positioned(
          top: 12,
          left: 12,
          right: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FadeAnimation(0.2, IconButton( 
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, size: 23, color: Colors.white),
              )),
              FadeAnimation(0.2, IconButton( 
                onPressed: () {
                },
                icon: Icon(Icons.menu, size: 23, color: Colors.white),
              ))
            ]
          )
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: MediaQuery.of(context).size.height / 1.4,
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "$name",
                      style: TextStyle(color: Colors.grey[900], fontSize: 20)
                    )
                  ),
                  SizedBox(height: 18),
                  Column(children: <Widget>[
                    profileList(title: user['id'], text: 'Мой ID'),
                    SizedBox(height: 8),
                    profileList(title: user['phone'], text: 'Мой телефон'),
                    SizedBox(height: 8),
                    profileList(title: '@thewitcher', text: 'Имя пользователя'),
                    SizedBox(height: 8),
                    profileList(title: 'О себе', text: user['about']),
                  ])
                ],
              ),
            ),
          ),
        )
      ])
    );
  }
}