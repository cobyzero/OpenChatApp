import 'package:flutter/material.dart';
import 'package:openchar_app/Common/common.dart';
import 'package:openchar_app/Common/elevatedButton.dart';
import 'package:openchar_app/Common/outlineButton.dart';
import 'package:openchar_app/Common/ventanaBase.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                    Row(
                      children: const [
                        Icon(
                          Icons.forum,
                          size: 40,
                        ),
                        Text(
                          "OpenChat",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    space(h: 40),
                    Image.asset(
                      "assets/imagen1.png",
                      width: 350,
                    ),
                    const Text(
                      "Hola!",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    space(h: 20),
                    const Text(
                      "Bienvenido a OpenChat\n plataforma de chat en tiempo real",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    space(h: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyElevatedButton(
                              fun: () {
                                Navigator.pushNamed(context, "login");
                              },
                              texto: "Iniciar Sesion"),
                          space(w: 20),
                          MyOutlineButton(
                              fun: () {
                                Navigator.pushNamed(context, "register");
                              },
                              texto: "Registrarse")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
