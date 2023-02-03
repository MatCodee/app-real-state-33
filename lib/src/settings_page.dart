import 'package:flutter/material.dart';

class SettignsPage extends StatelessWidget {
  const SettignsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content_body(),
    );
  }

  Widget content_body() {
    return Container(
      child: Column(
        children: [
          principal_content(),
          elements_items(),
        ],
      ),
    );
  }

  Widget principal_content() {
    return Container(
      margin: EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Configuracion",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text(
            "Informacion de la cuenta personal",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget elements_items() {
    return Container(
      child: Expanded(
        child: Column(
          children: [
            element(Icons.dark_mode_outlined, "Modo dark", "Aplicacion"),
            element(Icons.account_box_rounded, "Informacion de la cuenta",
                "Aplicacion"),
            element(
                Icons.accessibility_sharp, "Otra informacion", "Aplicacion"),
            element(Icons.close, "Cerrar Session", "Aplicacion"),
          ],
        ),
      ),
    );
  }

  Widget element(IconData icons, String text, String textSub) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        title: Text(text, style: TextStyle(fontSize: 20)),
        subtitle: Text(textSub),
        leading: Icon(
          icons,
          size: 35,
        ),
        onTap: () {
          print("informacion");
        },
      ),
    );
  }
}
