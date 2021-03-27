import 'package:flutter/material.dart';
import 'package:badler/widgets/components/more.dart';
import 'package:badler/animations/FadeAnimation.dart';
import 'package:badler/db/chat.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 13, right: 13, bottom: 30),
      child: Column(
        children: <Widget>[
          baseTop('Добавить друга', context),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                for(var item in chat.entries)
                  FadeAnimation(0.2, listItemUsers(item.value[0], item.key, item.value[1], item.value[2], context))
              ],
            ),
          )
        ],
      ),
    );
  }
}
