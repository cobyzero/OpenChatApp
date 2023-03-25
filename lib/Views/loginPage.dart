import 'package:flutter/material.dart';
import 'package:openchar_app/Common/elevatedButton.dart';
import 'package:openchar_app/Common/myTextFormField.dart';
import 'package:openchar_app/Common/ventanaBase.dart';

import '../Common/common.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: VentanaBase(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.forum,
                    size: 130,
                  ),
                  const Text(
                    "OpenChat",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  space(h: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bienvenido denuevo!",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      space(h: 10),
                      const Text(
                        "Inicia sesion para continuar",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  space(h: 20),
                  MyTextFormField(texto: "Usuario"),
                  MyTextFormField(texto: "Contraseña"),
                  space(h: 30),
                  MyElevatedButton(
                    fun: () {
                      Navigator.pushNamed(context, "home");
                    },
                    texto: "Ingresar ahora",
                    w: 250,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Olvido su contraseña?",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.logout,
                        size: 40,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
