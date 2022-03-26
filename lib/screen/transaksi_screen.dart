import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/transaksi_controller.dart';

class TransaksiScreen extends StatelessWidget {
  const TransaksiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TransaksiController transaksicontroller = Get.put(TransaksiController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Transaksi')),
        backgroundColor: Color.fromARGB(255, 57, 136, 135),
      ),
      body: Obx(
        () => transaksicontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: transaksicontroller.transaksiList.length,
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
                        DataColumn(label: Text('Nama Pembeli')),
                        DataColumn(label: Text('Nama Barang')),
                        DataColumn(label: Text('Tanggal Beli')),
                        DataColumn(label: Text('Harga')),
                        DataColumn(label: Text('Jumlah')),
                        DataColumn(label: Text('Total')),
                      ],
                      rows: [
                        DataRow(cells: [
                          // DataCell(Text('1')),
                          DataCell(Text (transaksicontroller.transaksiList[index].namaPembeli.toString())),
                          DataCell(Text (transaksicontroller.transaksiList[index].namaBarang.toString())),
                          DataCell(Text (transaksicontroller.transaksiList[index].tanggalBeli.toString())),
                          DataCell(Text (transaksicontroller.transaksiList[index].harga.toString())),
                          DataCell(Text (transaksicontroller.transaksiList[index].jumlah.toString())),
                          DataCell(Text (transaksicontroller.transaksiList[index].total.toString())),
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
