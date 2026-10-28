import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/controller/data_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Komik"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => SizedBox(
            height:360,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataController.listData.length,
              itemBuilder: (context, index) {
                final makanan = dataController.listData[index];

                return InkWell(
                  onTap: () {},
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            makanan.gambarMakanan,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  makanan.namaMakanan,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  makanan.asalUsul,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
