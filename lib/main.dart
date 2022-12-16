import 'package:flutter/material.dart';
import 'package:percobaan7_tugas_uts/screen/login.dart';
import 'package:percobaan7_tugas_uts/screen/lupa_password.dart';
import 'package:percobaan7_tugas_uts/screen/daftar.dart';
import 'package:percobaan7_tugas_uts/screen/list_barang.dart';
import 'package:percobaan7_tugas_uts/screen/login.dart';
import 'package:percobaan7_tugas_uts/screen/barang_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "UTS - Login Page",
    initialRoute: "/",
    routes: {
      "/": (context) => list_barang(),
      LoginPage.routeName: (context) => LoginPage(),
      Lupa.routeName: (context) => Lupa(),
      Daftar.routeName: (context) => Daftar(),
      barang_view.routeName: (context) => barang_view(),
    },
  ));
}
