import 'package:demo/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/bindings.dart';
import 'pages/home_page.dart';

import 'package:demo/helper/bindings.dart' as dep;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      initialBinding: IntialBindings(),
      initialRoute: AppRoutes.getIntialPage,
      getPages: AppRoutes.routes,
    );
  }
}
