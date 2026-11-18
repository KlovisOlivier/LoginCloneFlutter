import 'package:get/get.dart';
import 'package:pakaji/Pages/login_page.dart';
import 'package:pakaji/Pages/main_menu_page.dart';

class Routes {
  static const String login_page = '/login-page';
  static const String main_menu_page = '/main-menu-page';

 // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final pages = [
    GetPage(
      name: login_page,
      page: () => LoginPage()
    ),
    GetPage(
      name: main_menu_page,
      page: () => MainMenuPage()
    )
  ];
}