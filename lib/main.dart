import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/Bindings/storeBindings.dart';

import 'Pages/home.dart';
import 'Pages/updateFollowerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Demo',
      debugShowCheckedModeBanner: false,
      initialBinding: StoreBindings(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UpdateFollowerScreen(),
    );
  }
}
