// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:working/src/pages/Sing_Up.dart';
import 'package:working/src/pages/sing_in.dart';
import 'package:working/src/widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
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
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
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
                          fontFamily: 'PermanentMarker', fontSize: 38.0)),
                  Text('[Working Team]',
                      style:
                          TextStyle(fontFamily: 'FredokaOne', fontSize: 18.0)),
                  Divider(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40.0,
                    child: FlatButton(
                      color: Color.fromARGB(255, 42, 148, 104),
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingIn());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Ingresar',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'FredokaOne',
                            fontSize: 18.0),
                      ),
                    ),
                  ),
                  Divider(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40.0,
                    child: FlatButton(
                      color: Color.fromARGB(255, 42, 148, 104),
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingUp());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Registrarse',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'FredokaOne',
                            fontSize: 18.0),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
