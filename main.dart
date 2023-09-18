import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Screen.dart';
import 'inDec_screen.dart';
import 'package:untitled/List_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     getPages: [
      GetPage(name: "/", page: ()=>MyApp()),
       GetPage(name: "/indec", page: ()=>InDecScreen()),
       GetPage(name: "/listsc", page: ()=>listScreen()),
      ],
       home: HomeScreen(),

    );
  }
}