import 'package:badler/db/channel.dart';
import 'package:flutter/material.dart';
import 'package:badler/widgets/components/MenuModal.dart';
import 'package:badler/widgets/screens/ChatScreen.dart';
import 'package:badler/widgets/screens/ChannelScreen.dart';
import 'package:badler/widgets/screens/GroupScreen.dart';

Widget listItemGroup(
    String urlImg, String groupName, String message, String hour, context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => GroupScreen(img: urlImg, title: groupName)));
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey[300])),
        ),
        child: Row(
          children: <Widget>[
            avatarWidget(urlImg, 60.0),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    groupName,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              hour,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget listItemChannel(
    String urlImg, String channelName, String message, String hour, context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChannelScreen(img: urlImg, title: channelName,)));
      },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey[300])),
        ),
        child: Row(
          children: <Widget>[
            avatarWidget(urlImg, 60.0),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    channelName,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              hour,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget listItemUsers(
    String urlImg, String userName, String message, String hour, context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(img: urlImg, title: userName)));
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey[300])),
        ),
        child: Row(
          children: <Widget>[
            avatarWidget(urlImg, 60.0),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              hour,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget avatarWidget(String urlImg, double radius) {
  return Container(
    width: radius,
    height: radius,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          image: NetworkImage(urlImg),
        )),
  );
}

Widget baseTop(String buttonText, ctx) {
  return Column(children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        MenuModal(ctx: ctx),
        SizedBox(width: 60.0),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey[200]),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 9.0),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Поиск...",
              ),
            ),
          ),
        ),
      ],
    ),
    SizedBox(height: 10.0),
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(3),
      ),
      child: FlatButton.icon(
        padding: EdgeInsets.symmetric(vertical: 16),
        onPressed: () {},
        icon: Icon(
          Icons.edit,
          color: Colors.white,
          size: 18.0,
        ),
        label: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    )
  ]);
}

Widget profileList({title, text}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 6),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(width: 1, color: Colors.grey[300])),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: 3),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}