import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:flutter_ar/app/modules/home/controllers/home_controller.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER AR', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ArCoreView(
      onArCoreViewCreated: controller.onArCoreViewCreated,
      ),
    );
  }
}
  