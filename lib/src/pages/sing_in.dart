// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:working/src/widgets/icon_container.dart';
import 'package:working/src/widgets/login_form.dart';

class SingIn extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 12, 233, 96),
            Color.fromARGB(0, 175, 162, 161)
          ], begin: Alignment.topCenter),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                IconContainer(
                  url: 'images/Laburo.png',
                ),
                Text('Login',
                    style: TextStyle(
                        fontFamily: 'PermanentMarker', fontSize: 30.0)),
                Divider(
                  height: 10.0,
                ),
                //FORMULARIO
                LoginForm()
              ],
            )
          ],
        ),
      ),
    );
  }
}
