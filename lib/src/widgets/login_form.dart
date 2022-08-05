// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:working/src/pages/Sing_Up.dart';
import 'package:working/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  // ignore: unused_field
  late String _email;
  // ignore: unused_field
  late String _password;
  _submit() {
    final isLogin = _formkey.currentState!.validate();
    print('islogin Form$isLogin');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            InputText(
              hint: 'Direccion Email @',
              label: 'Email',
              keyboard: TextInputType.emailAddress,
              icono: Icon(Icons.alternate_email_rounded),
              onChanged: (data) {
                _email = data;
              },
              validator: (data) {
                if (data!.contains('@')) {
                  return 'Email Invalido';
                }
                return '';
              },
            ),
            Divider(
              height: 15.0,
            ),
            InputText(
              hint: 'Password',
              label: 'Contraseña',
              obsecure: true,
              icono: Icon(Icons.lock_clock_outlined),
              onChanged: (data) {
                _password = data;
              },
              validator: (data) {
                // ignore: prefer_is_empty
                if (data!.trim().length == 0) {
                  return 'Pass no Valido';
                }
                return '';
              },
            ),
            Divider(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 30.0,
              child: FlatButton(
                color: Color.fromARGB(255, 42, 148, 104),
                onPressed: _submit,
                child: Text(
                  'Ingresar',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PermanentMarker',
                      fontSize: 20.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Soy Nuevo:',
                  style: TextStyle(fontFamily: 'FredokaOne'),
                ),
                FlatButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingUp());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    'Resgistrarse',
                    style:
                        TextStyle(color: Colors.teal, fontFamily: 'FredokaOne'),
                  ),
                )
              ],
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
        ));
  }
}
