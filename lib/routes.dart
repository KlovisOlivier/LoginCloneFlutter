import 'package:get/get.dart';
import 'package:pakaji/Pages/main_menu_page.dart';
import 'package:pakaji/pages/confirm_reg_page.dart';
import 'package:pakaji/pages/detail_makanan_pages.dart';
import 'package:pakaji/pages/list_makanan_page.dart';
import 'package:pakaji/Pages/menu_drawer.dart';
import 'package:pakaji/pages/registration_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmReg = '/confirm-reg';
  static const String list_makanan = '/list-makanan';
  static const String detailmakanan = '/detail-makanan';
  static const String mainmenu = '/main-menu';
  static const String drawer = '/drawer';
  // other pages here

 // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final pages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage()
    ),
    GetPage(
      name: confirmReg,
      page: () => ConfirmRegPage()
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage()
    ),
    GetPage(
      name: detailmakanan,
      page: () => DetailMakananPages()
    ),
    GetPage(
      name: mainmenu,
      page: () => MainMenuPage()
    ),
    GetPage(
      name: drawer,
      page: () => MenuDrawer()
    ),
  ];
}