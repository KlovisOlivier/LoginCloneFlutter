import 'package:pakaji/models/makanan_model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  RxList<MakananModel> listData = <MakananModel>[
    MakananModel(
      namaMakanan: "Omniscient's Reader Viewpoint",
      hargaMakanan: "Sing-Song",
      asalUsul: "Action, Fantasy, Supernatural",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rM6H_ZUd8rGPuSTvhY3XD-lTbPA6xrYtIiLYxDYH5YsS_vO3ZQOibDS4&s=10",
    ),
    MakananModel(
      namaMakanan: "Star Ginseng Store",
      hargaMakanan: "Hyuno",
      asalUsul: "Slice of Life, Comedy, Romance",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rM6H_ZUd8rGPuSTvhY3XD-lTbPA6xrYtIiLYxDYH5YsS_vO3ZQOibDS4&s=10",
    ),
    MakananModel(
      namaMakanan: "My Bias Get On Last Train",
      hargaMakanan: "JIXKSEE",
      asalUsul: "Slice of Life, Comedy, Romance",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIU5SH78p8PgoDfVc_VAQJXqfr9cXMhxF0tqOcJNnsxl8T4bK0fSYspTY&s=10",
    ),
    MakananModel(
      namaMakanan: "Cyberpunk 2077",
      hargaMakanan: "600.000",
      asalUsul: "Game RPG open-world bertema masa depan.",
      gambarMakanan: "https://images.unsplash.com/photo-1542751110-97427bbecf20",
    ),
    MakananModel(
      namaMakanan: "Elden Ring",
      hargaMakanan: "700.000",
      asalUsul: "Game petualangan fantasi gelap yang menantang.",
      gambarMakanan: "https://images.unsplash.com/photo-1538481199705-c710c4e965fc",
    ),
  ].obs;
}