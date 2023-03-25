import 'package:flutter/material.dart';
import 'package:openchar_app/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routesApp(),
      initialRoute: "main",
    );
  }
}
