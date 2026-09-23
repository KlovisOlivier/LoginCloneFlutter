import 'package:flutter/material.dart';
import 'package:pakaji/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Page"),
      ),
      body: Column(
        children: [
          Text("Welcome to the Kalkulator Page", style: TextStyle(fontSize: 24, color: Colors.blue, fontStyle: FontStyle.italic)),
          Container(
            margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(hint: Text("input Angka pertama"))),
          ),
          Container(
            margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(hint: Text("input Angka kedua"))),
          ),
              ElevatedButton(onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);
                controller.tambah(angka1, angka2);
              },
              child : Text("Tambah"),
            ),
               Obx(
                  () => Text(
                  controller.hasil.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
            ),
    );
  }
}