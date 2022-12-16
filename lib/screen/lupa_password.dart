import 'package:flutter/material.dart';
import 'package:percobaan7_tugas_uts/constants.dart';

class Lupa extends StatefulWidget {
  static const routeName = "/LupaPage";
  @override
  _LupaPageState createState() => _LupaPageState();
}

class _LupaPageState extends State<Lupa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _iconRegistrasi(),
            _titleDescription(),
            _textField(),
            _buildButton(context),
          ],
        ),
      ),
    );
  }
}

Widget _iconRegistrasi() {
  return Image.asset(
    "assets/images/logo.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Lupa Password",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      Text(
        "Masukan Username atau Email Anda",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Username/Email",
          hintStyle: TextStyle(color: Colors.white),
        ),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Lupa Password',
            style: TextStyle(color: ColorPalette.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      TextButton(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
      )
    ],
  );
}
