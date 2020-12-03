import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav/pages/fourth.dart';
import 'package:getx_nav/pages/home.dart';
import 'package:getx_nav/pages/second.dart';
import 'package:getx_nav/pages/third.dart';

//test

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      accentColor: Colors.purpleAccent,
      primaryColor: Colors.purple,
    ),
    home: Home(),
    getPages: [
      GetPage(name: "/", page: () => Home()),
      GetPage(name: "second", page: () => Second()),
      GetPage(name: "third", page: () => Third(), transition: Transition.zoom),
      GetPage(name: "fourth", page: () => Fourth()),
    ],
  ));
}
