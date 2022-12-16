import 'package:flutter/material.dart';
import 'package:percobaan7_tugas_uts/constants.dart';
import 'package:percobaan7_tugas_uts/screen/barang_view.dart';
import 'package:percobaan7_tugas_uts/screen/login.dart';

class list_barang extends StatefulWidget {
  static const routeName = "/list_barang";
  @override
  _list_barangPageState createState() => _list_barangPageState();
}

class _list_barangPageState extends State<list_barang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _barang(context),
            _barang2(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        tooltip: 'Login Page',
        child: const Icon(Icons.list),
      ),
    );
  }
}

Widget _barang(BuildContext) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: <Widget>[
          Image(
            height: 150,
            image: AssetImage('assets/images/NB ASUS.jpg'),
          ),
          Text(
            "NB ASUS Vivo Book Pro 15",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Lihat Spesifikasi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(BuildContext, barang_view.routeName);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                elevation: 2,
                backgroundColor: Colors.amber),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Image(
            height: 150,
            image: AssetImage('assets/images/NB ASUS.jpg'),
          ),
          Text(
            "NB ASUS Vivo Book Pro 15",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Lihat Spesifikasi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(BuildContext, barang_view.routeName);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                elevation: 2,
                backgroundColor: Colors.amber),
          ),
        ],
      ),
    ],
  );
}

Widget _barang2(BuildContext) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: <Widget>[
          Image(
            height: 150,
            image: AssetImage('assets/images/NB ASUS.jpg'),
          ),
          Text(
            "NB ASUS Vivo Book Pro 15",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Lihat Spesifikasi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(BuildContext, barang_view.routeName);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                elevation: 2,
                backgroundColor: Colors.amber),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Image(
            height: 150,
            image: AssetImage('assets/images/NB ASUS.jpg'),
          ),
          Text(
            "NB ASUS Vivo Book Pro 15",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Lihat Spesifikasi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(BuildContext, barang_view.routeName);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                elevation: 2,
                backgroundColor: Colors.amber),
          ),
        ],
      ),
    ],
  );
}
