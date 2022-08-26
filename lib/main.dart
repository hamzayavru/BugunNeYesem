// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfam(),
      ),
    );
  }
}

class YemekSayfam extends StatefulWidget {
  @override
  State<YemekSayfam> createState() => _YemekSayfamState();
}

class _YemekSayfamState extends State<YemekSayfam> {
  // const YemekSayfam({Key? key}) : super(key: key);
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;
  List<String> corbaAdi = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdi = [
    'Karnı Yarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Balık'
  ];
  List<String> tatliadi = [
    'Kadayıf',
    'Baklava',
    'Fırında Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('asset/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdi[corbaNo - 1].toString(),
            style: TextStyle(fontSize: 25),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('asset/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdi[yemekNo - 1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('asset/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliadi[tatliNo - 1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
