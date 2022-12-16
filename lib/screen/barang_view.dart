import 'package:flutter/material.dart';
import 'package:percobaan7_tugas_uts/constants.dart';
import 'package:percobaan7_tugas_uts/screen/list_barang.dart';

class barang_view extends StatefulWidget {
  static const routeName = "/barang_view";
  @override
  _barang_viewPageState createState() => _barang_viewPageState();
}

class _barang_viewPageState extends State<barang_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _gambar(),
            _spesifikasi(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => list_barang()));
        },
        tooltip: 'List Barang',
        child: const Icon(Icons.login),
      ),
    );
  }
}

Widget _gambar() {
  return Image.asset(
    "assets/images/NB ASUS.jpg",
    width: 200.0,
    height: 200.0,
  );
}

Widget _spesifikasi() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Laptop ASUS Vivobook Pro 15",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      Text(
        "Spsifikasi :\n AMD Ryzen 9 5900HX (8-core/16-thread)\nRAM 16GB DDR4 + SSD 512 M.2 NVme PCI 3.0\nLayar 15 inch OLED + NVDIA GeForce RTX 3050\nWi-Fi 6 (802.11ax) (Dual Band) 2*2 + Bluetooth 5\nWindows 11 Pro + Office Home Student 2021",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
        textAlign: TextAlign.center,
      ),
    ],
    mainAxisAlignment: MainAxisAlignment.start,
  );
}
