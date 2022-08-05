import 'package:flutter/Material.dart';
import 'package:working/src/widgets/input_text.dart';

class LogoutForm extends StatefulWidget {
  LogoutForm({Key? key}) : super(key: key);

  @override
  State<LogoutForm> createState() => _LogoutFormState();
}

class _LogoutFormState extends State<LogoutForm> {
  String _name = '';
  String _email = '';
  String _pass = '';
  String _passConf = '';
  @override
  Widget build(BuildContext context) {
    return
        // ignore: dead_code
        Form(
            child: Column(
      children: <Widget>[
        InputText(
          hint: 'Direccion Email @',
          label: 'Email',
          keyboard: TextInputType.emailAddress,
          icono: Icon(Icons.verified_user),
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
          hint: 'Nombre Completo',
          label: 'Nombre y Apellido',
          obsecure: true,
          icono: Icon(Icons.account_box),
          onChanged: (data) {
            _name = data;
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
          height: 15.0,
        ),
        InputText(
          hint: 'Password',
          label: 'Contraseña',
          obsecure: true,
          icono: Icon(Icons.lock_clock_outlined),
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
        Divider(
          height: 15.0,
        ),
        InputText(
          hint: 'Password',
          label: 'Confirmar Contraseña',
          obsecure: true,
          icono: Icon(Icons.lock_clock_outlined),
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
        Divider(
          height: 15.0,
        ),
        SizedBox(
          width: double.infinity,
          height: 30.0,
          child: FlatButton(
            color: Color.fromARGB(255, 42, 148, 104),
            onPressed: () {},
            child: Text(
              'Guardar',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PermanentMarker',
                  fontSize: 20.0),
            ),
          ),
        ),
      ],
    ));
  }
}
