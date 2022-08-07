// ignore_for_file: prefer_const_constructors

import 'package:flutter/Material.dart';
import 'package:working/src/widgets/icon_container.dart';

import 'package:working/src/widgets/logout_form.dart';

class SingUp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                IconContainer(
                  url: 'images/Laburo.png',
                ),
                Text('Bienvenido',
                    style: TextStyle(
                        fontFamily: 'PermanentMarker', fontSize: 35.0)),
                Text('Registrate',
                    style: TextStyle(
                        fontFamily: 'PermanentMarker', fontSize: 25.0)),
                Divider(
                  height: 20.0,
                ),
                LogoutForm(),
                Divider(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: Color.fromARGB(200, 56, 111, 173),
                      child: Icon(Icons.arrow_back_rounded),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
