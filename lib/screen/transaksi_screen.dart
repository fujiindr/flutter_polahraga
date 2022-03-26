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
                itemCount: transaksicontroller.transaksiList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 300,
                        height: 125,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color.fromARGB(255, 57, 136, 135), Color.fromARGB(255, 57, 136, 135)]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                                transaksicontroller.transaksiList[index].namaPembeli.toString()),
                            Text(
                                transaksicontroller.transaksiList[index].namaBarang.toString()),
                            Text(
                                transaksicontroller.transaksiList[index].tanggalBeli.toString()),
                            Text(
                                transaksicontroller.transaksiList[index].harga.toString()),
                            Text(
                                transaksicontroller.transaksiList[index].jumlah.toString()),
                            Text(
                                transaksicontroller.transaksiList[index].total.toString()),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
