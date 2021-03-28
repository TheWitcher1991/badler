import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({
    Key key,
    this.img,
    this.title
  });

  final String img;
  final String title;

  @override
  GroupScreenState createState() => GroupScreenState();
}

class GroupScreenState extends State<GroupScreen> {
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
                // ! ГРУППА
              
              ]
            ))
          ],
        )
      ),
      // ! Блок input
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 13,vertical: 12),
        decoration: BoxDecoration( 
          color: Colors.grey[200]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(child: Row(
              children: <Widget>[
                Icon(Icons.bar_chart, color: Colors.grey[900], size: 26),
                SizedBox(width: 8),
                Text('Сообщение...')
              ],
            )),
            Row(children: <Widget>[
              Icon(Icons.sentiment_satisfied_alt, color: Colors.grey[900], size: 26),
              SizedBox(width: 12),
              Icon(Icons.send, color: Colors.blue, size: 26),
            ])
          ]
        ),
      )
    );
  }
}