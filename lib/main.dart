import 'package:disenos/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => Home(),
        'basico': ( _ ) => BasicoScreen(),
        'scroll': ( _ ) => ScrollScreen(),
      },
    );
  }
}
