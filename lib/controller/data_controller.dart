import 'package:pakaji/models/makanan_model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  RxList<MakananModel> listData = <MakananModel>[
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: "Rp25.000",
      deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLR4MpKLuCJgG5Ddy5mJdSpuNpdQcMkDYV0MKh8jJxUg&s=10)",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: "Rp30.000",
      deskripsiMakanan: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7IctHKMEn13yohkfoTyfD_NNRTwOvW8PHAt0v0nMrpA&s=10)",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: "Rp28.000",
      deskripsiMakanan: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfkyuXYPsffUu06VQVyPOEqWti2eZCQKDIXm4RXuvZDg&s=10",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: "Rp20.000",
      deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: "Rp8.000",
      deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8cPHrnnIjHL0JPxahp_TzwP-P-KgODdtV6kwtU9g02g&s=10",
    ),
  ].obs;
}