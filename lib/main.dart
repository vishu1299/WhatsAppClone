import 'package:flutter/material.dart';
import 'screens/whatsAppHome.dart';

void main() => runApp(WhatsApp());

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        indicatorColor: Colors.white,
        primaryColorDark: Color(0xFF128C7E),
        accentColor: Color(0xff25D33),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}

