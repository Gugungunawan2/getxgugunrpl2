import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'second_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Homecontroller hc=Get.put(Homecontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
       child: TextField(
        controller: hc.namacontroller,
        decoration: InputDecoration(labelText: 'Input nama'),
        onSubmitted: (value) {
          Get.defaultDialog(title: 'name',
          middleText: hc.namacontroller.text,
           onConfirm:() {
             Get.to(SecondScreen(),arguments: hc.namacontroller.text);
           },
          );
          // Get.defaultDialog(
          //   title:"nama yang di imput",
          //   middleText:hc.namacontroller.text,
          //   onConfirm: (){
          //     Get.to(SecondScreen(),arguments:hc.namacontroller.text);
          //   });
        },
       ),
      ),
    );
  }
}