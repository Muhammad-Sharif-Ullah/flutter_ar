import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class HomeController extends GetxController {

  ArCoreController arCoreController ;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onArCoreViewCreated(ArCoreController arCoreController) {
    arCoreController = arCoreController;
    addSphere(arCoreController);
    addCube(arCoreController);
    addCylinder(arCoreController);
  }

  addSphere(ArCoreController arcoreController) {
    final material = ArCoreMaterial(color: Colors.deepPurple);
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(
        0,
        0,
        -1,
      ),
    );
    arcoreController.addArCoreNode(node);
  }

  addCylinder(ArCoreController arCoreController) {
    final material = ArCoreMaterial(color: Colors.green, reflectance: 1);
    final cylinder =
    ArCoreCylinder(materials: [material], radius: 0.4, height: 0.3);
    final node = ArCoreNode(
      shape: cylinder,
      position: vector.Vector3(
        0,
        -2.5,
        -3.0,
      ),
    );

    arCoreController.addArCoreNode(node);
  }

  addCube(ArCoreController arcoreController) {
    final material = ArCoreMaterial(color: Colors.pink, metallic: 1);
    final cube =
    ArCoreCube(materials: [material], size: vector.Vector3(1, 1, 1));
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(
        -0.5,
        -0.5,
        -3,
      ),
    );

    arcoreController.addArCoreNode(node);
  }


}
