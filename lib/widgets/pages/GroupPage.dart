import 'package:flutter/material.dart';
import 'package:badler/widgets/components/more.dart';
import 'package:badler/animations/FadeAnimation.dart';
import 'package:badler/db/group.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 13, right: 13, bottom: 30),
      child: Column(
        children: <Widget>[
          baseTop('Создать группу', context),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView( 
              children: <Widget>[
                for(var item in group.entries)
                  FadeAnimation(0.2, listItemGroup(item.value[0], item.key, item.value[1], item.value[2], context))         
              ]
            )
          )
        ]
      ),
    );
  }
}