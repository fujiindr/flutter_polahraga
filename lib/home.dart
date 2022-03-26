import 'package:flutter/material.dart';
import 'package:p_alat_olahraga/menu.dart';
import 'menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Penjualan Alat Olahraga')),
        backgroundColor: Color(0xFF398887),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/olahraga.png"),
                    fit: BoxFit.cover
                    ),
              ),
              height: 230,
              width: 180,
              margin: EdgeInsets.all(18),
            ),
          //   Card(
          //   margin: const EdgeInsets.all(9),
          //   color: Colors.white,
          //   child: Container(
          //     // decoration: BoxDecoration(
          //     //   color: Colors.white,
          //     //   // boxShadow: [
          //     //   //   BoxShadow(
          //     //   //     color: Colors.black,
          //     //   //     spreadRadius: 1,
          //     //   //     blurRadius: 5,
          //     //   //   )
          //     //   // ],
          //     // ),
          //     child: Padding(
          //       padding: EdgeInsets.all(90),
          //       child: Container(
          //         child: Center(
          //           child: Text(
          //             "Selamat datang di aplikasi admin penjualan alat olahraga",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(color: Color(0xFF398887), fontSize: 25),
          //           ),
          //         ),
          //       ),
          //    ),
          //   )
          // ),
          ],
        ),
      ),
    );
  }
}
