import 'package:flutter/material.dart';

class MyChatFormField extends StatelessWidget {
  const MyChatFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 280,
      child: TextFormField(
        decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Mensaje"),
      ),
    );
  }
}
