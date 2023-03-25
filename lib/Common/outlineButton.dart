import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  MyOutlineButton({super.key, required this.fun, required this.texto});

  Function() fun;
  String texto;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: fun,
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          fixedSize: const Size(
            150,
            50,
          ),
          shape: const StadiumBorder()),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
