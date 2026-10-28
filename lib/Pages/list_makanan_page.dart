import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/controller/list_makanan_controller.dart';
import 'package:pakaji/routes.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.greenAccent.shade100.withOpacity(0.5),
      appBar: AppBar(
        title: Text("List Makanan", style: const TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return Dismissible(
              key: ValueKey(makanan.namaMakanan),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.detailmakanan,
                    arguments: makanan,
                  );
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                          makanan.namaMakanan,
                          style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "Rp. " + makanan.hargaMakanan,
                          style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}