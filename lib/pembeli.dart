import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/pembeli_controller.dart';

class PembeliPage extends StatelessWidget {
  const PembeliPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PembeliController pembelicontroller = Get.put(PembeliController());
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
        () => pembelicontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: pembelicontroller.pembeliList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
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
                            DataColumn(label: Text('Alamat')),
                            DataColumn(label: Text('No Hp')),
                            DataColumn(label: Text('Email')),
                          ],
                          rows: [
                            DataRow(cells: [
                              // DataCell(Text('1')),
                              DataCell(Text (pembelicontroller.pembeliList[index].nama_pembeli.toString())),
                              DataCell(Text (pembelicontroller.pembeliList[index].alamat.toString())),
                              DataCell(Text (pembelicontroller.pembeliList[index].no_hp.toString())),
                              DataCell(Text (pembelicontroller.pembeliList[index].email.toString())),
                            ]),
                          ]
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
//   runApp(PembeliPage());
// }

// class PembeliPage extends StatefulWidget {
//   PembeliPage({Key? key}) : super(key: key);

//   @override
//   State<PembeliPage> createState() => PembeliPageState();
// }

// class PembeliPageState extends State<PembeliPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Tabel Kategori'),
//         ),
//         body: ListView(
//           children: 
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
