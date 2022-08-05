//Formulario General para el registro.

// ignore_for_file: unnecessary_this

import 'package:flutter/Material.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icono;
  final TextInputType keyboard;
  final bool obsecure;
  final void Function(String data) onChanged;
  final String Function(String? data) validator;
  const InputText({
    Key? key,
    this.label = '',
    this.hint = '',
    required this.icono,
    this.keyboard = TextInputType.text,
    this.obsecure = false,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: TextFormField(
      keyboardType: this.keyboard,
      obscureText: this.obsecure,
      onChanged: this.onChanged,
      validator: this.validator,
      decoration: InputDecoration(
          hintText: this.hint,
          labelText: this.label,
          // ignore: prefer_const_constructors
          labelStyle: TextStyle(
              color: Colors.blueGrey, fontFamily: 'FredokaOne', fontSize: 18.0),
          suffixIcon: this.icono,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    ));
  }
}
