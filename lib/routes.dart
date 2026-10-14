import 'package:get/get.dart';
import 'package:pakaji/pages/confirm_reg_page.dart';
import 'package:pakaji/pages/list_makanan_page.dart';
import 'package:pakaji/pages/registration_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmReg = '/confirm-reg';
  static const String list_makanan = '/list-makanan';
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
  ];
}