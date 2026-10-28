import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/controller/detail_makanan_controller.dart';

class DetailMakananPages extends StatelessWidget {
  DetailMakananPages({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100.withOpacity(0.5),
      appBar: AppBar(
        title: Text("Detail Makanan", style: const TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              controller.gambarMakanan,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),

            Text(
              controller.namaMakanan,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(controller.asalUsul, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),

            Text(
              "Harga: ${controller.hargaMakanan}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
