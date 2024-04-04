import 'package:flutter/material.dart';
import 'package:urunler_uygulamasi/data/entity/urunler.dart';

class DetaySayfa extends StatefulWidget {
  DetaySayfa({required this.urun});
  Urunler urun;

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.urun.ad),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/${widget.urun.resim}"),
              Text(
                "${widget.urun.fiyat} ₺",
                style: const TextStyle(fontSize: 50),
              ),
            ],
          ),
        ));
  }
}
