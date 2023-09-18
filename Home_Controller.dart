import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  TextEditingController namaController=TextEditingController();


  // simple state
  String nama='';

  void GantiNilai(String mn){
    nama=mn;
    update();
  }

  RxBool isOpen = RxBool(true);

  void setIsOpen(bool Open){
    isOpen(Open);
    print(isOpen.value);
  }

  RxInt x = 0.obs;

  void tambah(){
    x.value++;
  }

  void kurang(){
    x.value--;
  }
}





