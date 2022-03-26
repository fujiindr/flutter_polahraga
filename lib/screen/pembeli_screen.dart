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
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/lib.jpg"),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(15),
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
                                )
                              ,]
                          ),
                  )
                      ]
                    )
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
