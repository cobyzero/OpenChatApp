import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({super.key, required this.texto});

  String texto;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        width: 250,
        height: 60,
        child: TextFormField(
          decoration: InputDecoration(
              labelText: texto, labelStyle: const TextStyle(color: Colors.grey, fontSize: 14)),
        ));
  }
}
