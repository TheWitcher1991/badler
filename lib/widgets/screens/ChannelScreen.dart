import 'package:flutter/material.dart';

class ChannelScreen extends StatefulWidget {
  const ChannelScreen({
    Key key,
    this.img,
    this.title
  });

  final String img;
  final String title;

  @override
  ChannelScreenState createState() => ChannelScreenState();
}

class ChannelScreenState extends State<ChannelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              decoration: BoxDecoration( 
                color: Colors.grey[200]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, size: 22, color: Colors.grey[900]),
                      ),
                      SizedBox(width: 16),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: NetworkImage(widget.img),
                                fit: BoxFit.cover
                              )
                            )
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.info_outline, size: 23, color: Colors.grey[900])
                ],
              ),
            ),
            Expanded(child: Column(
              children: <Widget>[
                // ! КАНАЛ
              
              ]
            ))
          ],
        )
      ),
    );
  }
}
