import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphism_ui/helpers/nm_box.dart';
import 'package:neumorphism_ui/screens/main_card.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(body1: TextStyle(color: fCL))),
      home: MainCard(),
    );
  }
}
