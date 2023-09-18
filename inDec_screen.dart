import 'package:untitled/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home_Controller.dart';

class InDecScreen extends StatelessWidget {
  const InDecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  hc.tambah();
                },   icon: Icon(Icons.add)),
                Obx(() => Text(hc.x.toString())),
                IconButton(onPressed: (){
                  hc.kurang();
                }, icon: Icon(Icons.remove)),
              ],
            )));
  }
}



