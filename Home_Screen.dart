import 'package:untitled/Home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text ('Getx'),
        actions: [
          IconButton(onPressed: () {
            Get.bottomSheet(Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey,
            width: 100,
            height: 100,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextButton(
            onPressed: () {
            Get.toNamed("/indec");
            }, child: Text('Increase/Decrease')),
            SizedBox(
            height: 10,
            ),
            TextButton(
            onPressed: () {
            Get.toNamed("/listsc");
            }, child: Text('List screen')),
            ],
            ),
            ));
    }, icon: Icon(Icons.abc_rounded),)
         ]

    ),
                 body: Column(
                 children: [
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextField(
                  controller: hc.namaController,
                  decoration: InputDecoration(
                  labelText: 'input nama'
    ),
              onSubmitted: (value) {
              Get.snackbar('nilai dari variabel nama adalah: ', hc.nama,
              snackPosition: SnackPosition.BOTTOM,
              duration: Duration(seconds: 1));
              hc.GantiNilai(hc.namaController.text);
    // Get.defaultDialog(
    //   title: "nama yang di input",
    //   middleText: hc.namaController.text,
    //   onConfirm: (){
    //     Get.to(SecondScreen(), arguments: hc.namaController.text);
    //   });
    }

            ),
          ),
          SizedBox(height: 10),
          // Obx(()=> Text(hc.nama.value)),
          GetBuilder<HomeController>(builder: (hc){
            return Text(hc.nama);
          }),

          Row(
           children: [
             Obx(() => Text(hc.isOpen.value ? "opened" : "closed")),

            Obx(() => Switch(
              value: hc.isOpen.value,
              activeColor: Colors.green,
              onChanged: (value){
              hc.setIsOpen(value);
              })
    ),
  ]
    )],
      ),
    );
  }

}