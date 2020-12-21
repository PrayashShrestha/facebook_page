import 'package:flutter/material.dart';
import 'Screens/Myapp.dart';
import 'Screens/detailedPage.dart';

void main() {
  runApp(MaterialApp(
    home: MyFacebookApp(),
    debugShowCheckedModeBanner: false,
    routes: {"/details": (context) => DetailedPage()},
  ));
}
