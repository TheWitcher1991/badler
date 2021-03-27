import 'package:flutter/material.dart';
import 'package:badler/widgets/screens/MainScreen.dart';

void main() => runApp(Flutter());

class Flutter extends StatelessWidget {
    const Flutter({Key key}) : super(key: key);

    @override 
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: lightTheme(),
            home: MainScreen()
        );
    }
}