import 'package:flutter/widgets.dart';
import 'package:pakaji/menu/feat.dart';
import 'package:pakaji/menu/home.dart';
import 'package:pakaji/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    HomePage(),
    const FeatPage(),
    const ProfilePage(),
  ];
}
