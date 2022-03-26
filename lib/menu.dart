import 'package:flutter/material.dart';
import 'package:p_alat_olahraga/barang.dart';
import 'package:p_alat_olahraga/kategori.dart';
import 'package:p_alat_olahraga/pembeli.dart';
import 'package:p_alat_olahraga/screen/barang_screen.dart';
import 'package:p_alat_olahraga/screen/kategori_scree.dart';
import 'package:p_alat_olahraga/screen/pembeli_screen.dart';
import 'package:p_alat_olahraga/screen/transaksi_screen.dart';
import 'package:p_alat_olahraga/transaksi.dart';
import 'home.dart';
import 'profile.dart';
// import 'menu2_screen.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MenuPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Penjualan Alat Olahraga')),
        backgroundColor: Color.fromARGB(255, 57, 136, 135),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(5),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => KategoriScreen(),
                  ),
                );
              },
              splashColor: Color.fromARGB(255, 57, 136, 135),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.category,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Kategori", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => BarangScreen(),
                  ),
                );
              },
              splashColor: Color.fromARGB(255, 57, 136, 135),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.add_box,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Barang", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const PembeliScreen(),
                  ),
                );
              },
              splashColor: Color.fromARGB(255, 57, 136, 135),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people_alt,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Pembeli", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => TransaksiScreen(),
                  ),
                );
              },
              splashColor: Color.fromARGB(255, 57, 136, 135),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.money,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Transaksi", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Color.fromARGB(255, 57, 136, 135),
      //   unselectedItemColor: Colors.grey,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.assignment),
      //       label: 'Menu',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   onTap: (index) => setState(() {
      //     _selectedIndex = index;
      //   }),
      // ),
    );
  }
}
