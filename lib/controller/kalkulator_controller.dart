import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  // method tambah kurang kali dan bagi
  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "hasil tambah",
      "hasilnya ${hasilTambah}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}