import 'package:flutter/material.dart';
import 'package:badler/widgets/screens/ProfileScreen.dart';
import 'package:badler/widgets/screens/SettingScreen.dart';
import 'package:badler/db/user.dart';

class MenuModal extends StatelessWidget {
  const MenuModal({Key key, this.ctx}) : super(key: key);

  final BuildContext ctx;

  Widget build(BuildContext context) {
    return Container(
      child: FlatButton.icon(
        icon: Icon(Icons.menu, color: Colors.grey[900]),
        label: Text('BadLer',
            style: TextStyle(color: Colors.grey[900], fontSize: 19.0)),
        onPressed: () {
          showModalSheet(context);
        },
      ),
    );
  }

  void showModalSheet(BuildContext context) {
    showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter state) {
            return createBox(context, state);
          }
        );
      }
    );
  }

  createBox(BuildContext context, StateSetter state) {
    return Column(children: <Widget>[
      Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(top: 18.0, bottom: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: user['img']
              ),
              SizedBox(height: 8.0),
              Text(
                user['name'],
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.0)
            ],
          ),
        )
      ),
      SizedBox(height: 10),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.edit,
          color: Colors.grey[900],
        ),
        title: Text("Создать"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
        },
        leading: Icon(
          Icons.person_pin_rounded,
          color: Colors.grey[900],
        ),
        title: Text("Профиль"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.person_add,
          color: Colors.grey[900],
        ),
        title: Text("Добавить друга")
      ),
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
        },
        leading: Icon(
          Icons.settings,
          color: Colors.grey[900],
        ),
        title: Text("Настройки"),
      ),
    ]);
  }
}
