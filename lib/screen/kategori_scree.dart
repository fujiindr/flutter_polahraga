import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/kategori_controller.dart';

class KategoriScreen extends StatelessWidget {
  const KategoriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KategoriController kategoricontroller = Get.put(KategoriController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Kategori')),
        backgroundColor: Color.fromARGB(255, 57, 136, 135),
      ),
      body: Obx(
        () => kategoricontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: kategoricontroller.kategoriList.length,
                itemBuilder: (content, index) {
                  return Container(
                    // width: 500,
                    // height: 200,
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // gradient: LinearGradient(
                      //     colors: [Color.fromARGB(255, 57, 136, 135), Color.fromARGB(255, 57, 136, 135)]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DataTable(
                      columns: [
                        // DataColumn(label: Text('No')),
                        DataColumn(label: Text('Nama Kategori')),
                      ],
                      rows: [
                        DataRow(cells: [
                          // DataCell(Text('1')),
                          DataCell(Text (kategoricontroller.kategoriList[index].nama_kategori.toString())),
                        ]),
                      ]
                    ),
                  );
                },
              )),
      ),
    );
  }
}
