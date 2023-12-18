import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controller/main_screen_dart.dart';

class HomeScreen extends GetView<MainScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenController());
    return  Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Counter App with GetX",
        style: TextStyle(fontSize: 20,color: Colors.white),
        ),
      ),
      //body
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Value ${controller.value}',
              style: TextStyle(fontSize: 60.0,color: Colors.black),),),

             const SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: (){
                  controller.add();
                },
                  backgroundColor: Colors.blueAccent,
                  child: const Icon(Icons.add,color: Colors.white,),),
                const SizedBox(width: 40,),
                FloatingActionButton(onPressed: (){
                  controller.substract();
                },
                  backgroundColor: Colors.blueAccent,
                  child: const Icon(Icons.remove,color: Colors.white,),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
