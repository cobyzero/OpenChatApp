import 'package:flutter/material.dart';
import 'package:openchar_app/Common/common.dart';
import 'package:openchar_app/Common/elevatedButton.dart';
import 'package:openchar_app/Common/myTextFormField.dart';
import 'package:openchar_app/Common/ventanaBase.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: VentanaBase(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(
                  Icons.forum,
                  size: 100,
                ),
                const Text(
                  "Empieza",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                space(h: 10),
                const Text(
                  "Crea tu cuenta ahora!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                space(h: 20),
                MyTextFormField(texto: "Nombre completo"),
                MyTextFormField(texto: "Usuario"),
                MyTextFormField(texto: "Contraseña"),
                space(h: 30),
                MyElevatedButton(
                  fun: () {
                    Navigator.pushNamed(context, "home");
                  },
                  texto: "Registrarse",
                  w: 250,
                ),
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
        )),
      ),
    );
  }
}
