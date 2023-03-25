import 'package:flutter/material.dart';
import 'package:openchar_app/Common/common.dart';
import 'package:openchar_app/Common/myTextFormField.dart';
import 'package:openchar_app/Common/outlineButton.dart';
import 'package:openchar_app/Common/ventanaBase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool u_sala = false;
  bool c_sala = false;

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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                if (!c_sala) unirseSala(),
                if (u_sala) MyTextFormField(texto: "Codigo"),
                if (u_sala)
                  MyOutlineButton(
                      fun: () {
                        Navigator.pushNamed(context, "chat");
                      },
                      texto: "Unirse"),
                space(h: 20),
                if (!u_sala) crearSala(),
                if (c_sala) MyTextFormField(texto: "Codigo"),
                if (c_sala)
                  MyOutlineButton(
                      fun: () {
                        Navigator.pushNamed(context, "chat");
                      },
                      texto: "Crear"),
                space(h: 20),
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

  InkWell crearSala() {
    return InkWell(
      onTap: () {
        setState(() {
          if (c_sala) {
            c_sala = false;
          } else {
            c_sala = true;
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: c_sala ? 100 : 200,
        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: const Text(
          "Crear Sala",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }

  InkWell unirseSala() {
    return InkWell(
      onTap: () {
        setState(() {
          if (u_sala) {
            u_sala = false;
          } else {
            u_sala = true;
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: u_sala ? 100 : 200,
        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(20)),
        child: const Text(
          "Unirse a Sala",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
