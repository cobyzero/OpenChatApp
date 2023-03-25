import 'package:flutter/material.dart';
import 'package:openchar_app/Common/common.dart';
import 'package:openchar_app/Common/myChatFormField.dart';
import 'package:openchar_app/Common/myTextFormField.dart';
import 'package:openchar_app/Common/ventanaBase.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: VentanaBase(
            child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(right: 30),
                alignment: Alignment.center,
                width: double.infinity,
                height: 40,
                decoration:
                    BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.logout)),
                    const Text(
                      "Sala: 73173",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            space(h: 20),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              mensajeIzquierda("Hola mundo"),
              mensajeDerecha("Hola!"),
              mensajeIzquierda("Hola mundo"),
              mensajeDerecha("Hola!"),
              mensajeIzquierda("Hola mundo"),
              mensajeDerecha("Hola!"),
              mensajeIzquierda("Hola mundo"),
              mensajeDerecha("Hola!"),
            ]))),
            barrachat()
          ],
        )),
      ),
    );
  }

  SizedBox barrachat() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyChatFormField(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.send))
            ],
          ),
        ),
      ),
    );
  }

  mensajeIzquierda(String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          decoration:
              BoxDecoration(color: Colors.grey.shade800, borderRadius: BorderRadius.circular(20)),
          child: Text(
            texto,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  mensajeDerecha(String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.greenAccent.shade700, borderRadius: BorderRadius.circular(20)),
          child: Text(texto, style: const TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
