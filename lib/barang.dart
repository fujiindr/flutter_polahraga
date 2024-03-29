import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/barang_controller.dart';

class BarangPage extends StatelessWidget {
  const BarangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BarangController barangcontroller = Get.put(BarangController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Barang')),
        backgroundColor: Color.fromARGB(255, 57, 136, 135),
      ),
      body: Obx(
        () => barangcontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: barangcontroller.barangList.length,
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
                                barangcontroller.barangList[index].namaBarang.toString()),
                            Text(
                                barangcontroller.barangList[index].namaKategori.toString()),
                            Text(
                                barangcontroller.barangList[index].stok.toString()),
                            Text(
                                barangcontroller.barangList[index].deskripsi.toString()),
                            Text(
                                barangcontroller.barangList[index].harga.toString()),
                            Text(
                                barangcontroller.barangList[index].cover.toString()),
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
// import 'package:flutter/material.dart';

// void main() {
//   runApp(BarangPage());
// }

// class BarangPage extends StatefulWidget {
//   BarangPage({Key? key}) : super(key: key);

//   @override
//   State<BarangPage> createState() => BarangPageState();
// }

// class BarangPageState extends State<BarangPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Tabel Kategori'),
//         ),
//         body: ListView(
//           children: <Widget>[
//             DataTable(
//               columns: [
//                 DataColumn(label: Text('No')),
//                 DataColumn(label: Text('Nama Kategori')),
//               ],
//               rows: [
//                 DataRow(cells: [
//                   DataCell(Text('1')),
//                   DataCell(Text('Sepak Bola')),
//                 ]),
//                 DataRow(cells: [
//                   DataCell(Text('2')),
//                   DataCell(Text('Badminton')),
//                 ]),
//                 DataRow(cells: [
//                   DataCell(Text('3')),
//                   DataCell(Text('Bola Basket')),
//                 ]),
//                 DataRow(cells: [
//                   DataCell(Text('4')),
//                   DataCell(Text('Bola Voli')),
//                 ]),
//                 DataRow(cells: [
//                   DataCell(Text('5')),
//                   DataCell(Text('Renang')),
//                 ]),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
