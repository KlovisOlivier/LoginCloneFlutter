import "package:get/get.dart";
import "package:pakaji/models/makanan_model.dart";

class DetailMakananController extends GetxController {

  late String namaMakanan; 
  late String asalUsul;
  late String gambarMakanan;
  late String hargaMakanan;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      MakananModel makanan = Get.arguments;
      namaMakanan = makanan.namaMakanan;
      asalUsul = makanan.asalUsul;
      gambarMakanan = makanan.gambarMakanan;
      hargaMakanan = makanan.hargaMakanan;
    }
  }
}