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
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLJ0btVj62t5HW5tj32qZf4srpYO7kXE_cF_vFC--F7Q&s=10",
    ),
    MakananModel(
      namaMakanan: "My Bias Get On Last Train",
      hargaMakanan: "JIXKSEE",
      asalUsul: "Slice of Life, Comedy, Romance",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIU5SH78p8PgoDfVc_VAQJXqfr9cXMhxF0tqOcJNnsxl8T4bK0fSYspTY&s=10",
    ),
    MakananModel(
      namaMakanan: "Existence",
      hargaMakanan: "600.000",
      asalUsul: "Aksi, Drama, Fantasi, Seinen",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQniRYK9mklu_0T2BW0HXA9ICCCREjAkVbxa8Hmbem36g&s=10",
    ),
    MakananModel(
      namaMakanan: "Player",
      hargaMakanan: "700.000",
      asalUsul: "Aksi, Fantasi, Supernatural",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTnEEPvIZI8DlyNuSh8aMSohZFVszqIvTIItsOMb8OqQ&s=10",
    ),
  ].obs;
}