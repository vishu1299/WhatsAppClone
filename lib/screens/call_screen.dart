import 'package:flutter/material.dart';
import '../models/call_model.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: new AssetImage(dummyData[i].avatarUrl),
                    radius: 27.0,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[i].name,
                        style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17.0),
                      ),
                    ],
                  ),
// Call made icon
//                  Icon (
//                    Icons.call_made,
//                    color: Colors.green,
//                    ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: new Text(
                      dummyData[i].time,
                      style: new TextStyle(
                          color: Colors.grey[600], fontSize: 15.0),
                    ),
                  ),
                  trailing: new Icon(
                    i % 2 == 0 ? Icons.call : Icons.videocam,
                    color: new Color(0xff075E54),
                  ),
                ),
                new Divider(
                  height: 8.0,
                )
              ],
            ));
  }
}
