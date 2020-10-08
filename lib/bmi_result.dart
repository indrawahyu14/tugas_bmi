import 'package:flutter/material.dart';
import 'dart:math';
import 'bmi.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggi_badan,
      @required this.berat_badan,
      @required this.nama_lengkap,
      @required this.tahun_lahir,
      @required this.jk});
  final int tinggi_badan;
  final int tahun_lahir;
  final int berat_badan;
  final String nama_lengkap;
  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil BMI'),
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Container(
        color: Colors.blueGrey[100],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.blueGrey[100],
              ),
            ),
            new Text(
              "Nama : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.blueGrey[100],
              ),
            ),
            new Text(
              "Umur : ${2020 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.blueGrey[100],
              ),
            ),
            new Text(
              "Jenis Kelamin : ${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.blueGrey[100],
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 90,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Jangkauan Normal BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.blueGrey[500],
          alignment: Alignment.center,
          child: Text(
            'Indra Jr',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
