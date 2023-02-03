import 'package:app/src/detail_page.dart';
import 'package:app/src/home_page.dart';
import 'package:app/src/loginPage.dart';
import 'package:app/src/settings_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routesPageElement = {
  'login': (BuildContext context) => LoginPage(),
  'home': (BuildContext context) => HomePage(),
  'detail': (BuildContext context) => DetailPage(),
  'settings': (BuildContext context) => SettignsPage(),
};
