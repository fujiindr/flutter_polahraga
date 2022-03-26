import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/pembeli_controller.dart';

class PembeliScreen extends StatelessWidget {
  const PembeliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PembeliController pembelicontroller = Get.put(PembeliController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Pembeli')),
        backgroundColor: Color.fromARGB(255, 57, 136, 135),
      ),
      body: Obx(
        () => pembelicontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: pembelicontroller.pembeliList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 300,
                        height: 100,
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
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                pembelicontroller.pembeliList[index].nama_pembeli.toString()),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                pembelicontroller.pembeliList[index].alamat.toString()),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      pembelicontroller.pembeliList[index].no_hp.toString()),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text( 
                                      pembelicontroller.pembeliList[index].email.toString())
                                  ],
                                )
                              ],
                            ),
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
