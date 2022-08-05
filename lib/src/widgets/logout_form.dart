// ignore_for_file: deprecated_member_use

import 'package:flutter/Material.dart';
import 'package:working/src/pages/sing_in.dart';
import 'package:working/src/widgets/input_text.dart';

class LogoutForm extends StatefulWidget {
  const LogoutForm({Key? key}) : super(key: key);

  @override
  State<LogoutForm> createState() => _LogoutFormState();
}

class _LogoutFormState extends State<LogoutForm> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  // ignore: unused_field
  String _name = '';
  // ignore: unused_field
  String _email = '';
  String _pass = '';
  // ignore: unused_field
  String _passConf = '';

  _submit() {
    final isLogin = _formkey.currentState!.validate();
    print('islogin Form$isLogin');
  }

  @override
  Widget build(BuildContext context) {
    return
        // ignore: dead_code
        Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                InputText(
                  hint: 'Direccion Email @',
                  label: 'Email',
                  keyboard: TextInputType.emailAddress,
                  icono: const Icon(Icons.alternate_email_rounded),
                  onChanged: (data) {
                    _email = data;
                  },
                  validator: (data) {
                    if (data!.contains('@')) {
                      return 'Email no valido';
                    }
                    if (data.trim().isEmpty) {
                      return 'Rellene este campo';
                    }
                    return '';
                  },
                ),
                const Divider(
                  height: 15.0,
                ),
                InputText(
                  hint: 'Nombre Completo',
                  label: 'Nombre y Apellido',
                  obsecure: true,
                  icono: const Icon(Icons.account_box),
                  onChanged: (data) {
                    _name = data;
                  },
                  validator: (data) {
                    if (data!.trim().isEmpty) {
                      return 'Rellene este campo';
                    }
                    return '';
                  },
                ),
                const Divider(
                  height: 15.0,
                ),
                InputText(
                  hint: 'Password',
                  label: 'Contraseña',
                  obsecure: true,
                  icono: const Icon(Icons.lock_clock_outlined),
                  onChanged: (data) {
                    _pass = data;
                  },
                  validator: (data) {
                    // ignore: prefer_is_empty
                    if (data!.trim().length == 0) {
                      return 'Pass no Valido';
                    }
                    return '';
                  },
                ),
                const Divider(
                  height: 15.0,
                ),
                InputText(
                  hint: 'Password',
                  label: 'Confirmar Contraseña',
                  obsecure: true,
                  icono: const Icon(Icons.lock_reset_outlined),
                  onChanged: (data) {
                    _passConf = data;
                  },
                  validator: (data) {
                    // ignore: prefer_is_empty
                    if (data != _pass) {
                      return 'Contraseñas No Coinciden';
                    }
                    return '';
                  },
                ),
                const Divider(
                  height: 15.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 30.0,
                  child: FlatButton(
                    color: const Color.fromARGB(255, 42, 148, 104),
                    onPressed: _submit,
                    child: const Text(
                      'Registrarse',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PermanentMarker',
                          fontSize: 20.0),
                    ),
                  ),
                ),
                const Divider(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Ya tengo una cuenta:',
                      style: TextStyle(fontFamily: 'FredokaOne'),
                    ),
                    FlatButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingIn());
                        Navigator.push(context, route);
                      },
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(
                            color: Colors.teal, fontFamily: 'FredokaOne'),
                      ),
                    )
                  ],
                ),
              ],
            ));
  }
}
