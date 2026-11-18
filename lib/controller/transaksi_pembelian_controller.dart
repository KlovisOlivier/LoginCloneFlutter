import "package:get/get.dart";
import "package:pakaji/models/makanan_model.dart";

class TransaksiPembelianController extends GetxController {
  TransaksiPembelianController({required this.makanan});

  final MakananModel makanan;

  String get namaMakanan => makanan.namaMakanan;
  String get deskripsiMakanan => makanan.deskripsiMakanan;
  String get gambarMakanan => makanan.gambarMakanan;
  String get hargaMakanan => makanan.hargaMakanan;
}