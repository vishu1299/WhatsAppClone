import 'package:flutter/material.dart';
import '../models/chat_models.dart';

var list = ["one", "two", "three", "four"];
//adding morevert function
enum MoreMenu { view_contact, media, search, mute, wallpaper, more }

class MessageScreen extends  StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();

}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: new AppBar(
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new AssetImage(dummyData[3].avatarUrl),
              radius: 18.0,
            ),
            new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 8.0, ),
                  child: new Text(
                    dummyData[3].name,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                ),
//                Padding(
//                  padding: const EdgeInsets.only(top: 3.0,),
//                )
              ],
            )
          ],
        ),
      ),

    );
  }

}