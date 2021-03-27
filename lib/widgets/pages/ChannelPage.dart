import 'package:flutter/material.dart';
import 'package:badler/widgets/components/more.dart';
import 'package:badler/animations/FadeAnimation.dart';
import 'package:badler/db/channel.dart';

class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 13, right: 13, bottom: 30),
      child: Column(
        children: <Widget>[
          baseTop('Создать канал', context),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView( 
              children: <Widget>[
                for(var item in channel.entries)
                  FadeAnimation(0.2, listItemChannel(item.value[0], item.key, item.value[1], item.value[2], context))      
              ]
            )
          )
        ]
      ),
    );
  }
}