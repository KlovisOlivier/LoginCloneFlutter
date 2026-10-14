import 'package:flutter/material.dart';
import 'package:pakaji/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.list_makanan,
      getPages: Routes.pages,
    );
  }
}