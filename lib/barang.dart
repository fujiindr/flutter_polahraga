import 'package:flutter/material.dart';

void main() {
  runApp(BarangPage());
}

class BarangPage extends StatefulWidget {
  BarangPage({Key? key}) : super(key: key);

  @override
  State<BarangPage> createState() => BarangPageState();
}

class BarangPageState extends State<BarangPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tabel Kategori'),
        ),
        body: ListView(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Nama Kategori')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Sepak Bola')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Badminton')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Bola Basket')),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Text('Bola Voli')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('Renang')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}