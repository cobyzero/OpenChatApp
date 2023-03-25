import 'package:flutter/material.dart';

class VentanaBase extends StatelessWidget {
  VentanaBase({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: child,
    );
  }
}
