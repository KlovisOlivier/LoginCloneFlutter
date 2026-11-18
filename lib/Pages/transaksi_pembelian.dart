import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/controller/transaksi_pembelian_controller.dart';

class TransaksiPembelianPages extends StatelessWidget {
  TransaksiPembelianPages({super.key});

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
          ],
        ),
      ),
    );
  }
}
