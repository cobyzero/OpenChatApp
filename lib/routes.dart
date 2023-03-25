import 'package:flutter/material.dart';
import 'package:openchar_app/Views/chatPage.dart';
import 'package:openchar_app/Views/homePage.dart';
import 'package:openchar_app/Views/loginPage.dart';
import 'package:openchar_app/Views/mainPage.dart';
import 'package:openchar_app/Views/registerPage.dart';

Map<String, WidgetBuilder> routesApp() {
  return {
    "main": (context) => const MainPage(),
    "login": (context) => const LoginPage(),
    "register": (context) => const RegisterPage(),
    "home": (context) => const HomePage(),
    "chat": (context) => const ChatPage()
  };
}
