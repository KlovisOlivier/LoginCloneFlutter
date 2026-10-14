import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/controller/confirm_reg_controller.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
         children: [
          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Jenis Kelamin ${controller.jenisKelamin}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Alamat ${controller.alamat}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Email ${controller.email}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "No HP ${controller.noHp}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back(); // kembali ke halaman sebelumnya
            },
            child: Text("Oke"),
          ),
        ],
      ),
    );
  }
}