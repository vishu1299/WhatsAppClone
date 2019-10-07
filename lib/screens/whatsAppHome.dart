import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'call_screen.dart';

class WhatsAppHome extends StatelessWidget {
  final tabs = <Widget>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          //top of an app
          appBar: AppBar(
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
              backgroundColor: new Color(0xff075E54),
              bottom: TabBar(
                tabs: tabs,
                indicatorColor: Colors.white,
              ),
              title: Text(
                'WhatsApp',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600),
              ),
              centerTitle: false),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
            backgroundColor: Colors.green,
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.add_a_photo),
              ChatScreen(),
              Icon(Icons.star),
              new CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
      return ListTile(
        title: Text('Contact $index',
            style: TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text('This is my text message.'),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://flutterawesome.com/content/images/2018/12/Flutter-WhatsAppClone.jpg'),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ChatRoom();
            }),
          );
        },
      );
    });
  }
}

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
          titleSpacing: 0.0,
          title: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 20,
          ),
          SizedBox(
            width: 8.0,
          ),
        ],
      )),
      // Title text, action buttons on the right
      body: Column(children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              Text(
                'hi there',
                textScaleFactor: 1,
              ),
            ],
          ), // chat threads
        ),
        Row(
          verticalDirection: VerticalDirection.down,
        ), // input field + send button
      ]),
    );
  }
}
