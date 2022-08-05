import 'package:working/src/pages/home_page.dart';
import 'package:working/src/pages/sing_in.dart';
import 'package:working/src/pages/sing_up.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'Home',
      routes: <String, WidgetBuilder>{
        'Home': (BuildContext context) => HomePage(),
        'SingIn': (BuildContext context) => SingIn(),
        'SingUp': (BuildContext context) => SingUp()
      },
    );
  }
}
