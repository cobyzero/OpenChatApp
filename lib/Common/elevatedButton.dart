import 'package:flutter/material.dart';
import 'package:openchar_app/Common/common.dart';

class MyElevatedButton extends StatelessWidget {
  MyElevatedButton({super.key, required this.fun, required this.texto, this.w = 150});

  Function() fun;
  String texto;
  double w;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fun,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(
            w,
            50,
          ),
          backgroundColor: colorAzul(),
          shape: const StadiumBorder()),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
