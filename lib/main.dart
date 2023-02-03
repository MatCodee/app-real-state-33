import 'package:app/routes/routesPage.dart';
import 'package:app/src/detail_page.dart';
import 'package:app/src/loginPage.dart';
import 'package:app/src/settings_page.dart';
import 'package:flutter/material.dart';
import 'src/home_page.dart';
import 'src/detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      // define el color de la aplicacion
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: routesPageElement,
    );
  }
}
