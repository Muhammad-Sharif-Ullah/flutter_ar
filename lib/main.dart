import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
    show ArCoreController;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // print('ARCORE IS AVAILABLE?');
  // print(await ArCoreController.checkArCoreAvailability());
  // print('\nAR SERVICES INSTALLED?');
  // print(await ArCoreController.checkIsArCoreInstalled());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter AR",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
  