import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunler_uygulamasi/data/entity/urunler.dart';
import 'package:urunler_uygulamasi/ui/cubit/anasayfa_cubit.dart';
import 'package:urunler_uygulamasi/ui/views/detay_sayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  void initState() {
    super.initState();
    context.read<AnasayfaCubit>().urunlerGetir();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ürünler"),
      ),
      body: BlocBuilder<AnasayfaCubit, List<Urunler>>(
        builder: (context, urunlerListesi) {
          if (urunlerListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: urunlerListesi.length,
              itemBuilder: (context, index) {
                var urun = urunlerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetaySayfa(urun: urun)))
                        .then((value) => print("Anasayfaya Dönüldü"));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              height: 128,
                              width: 128,
                              child: Image.asset("images/${urun.resim}")),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              urun.ad,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${urun.fiyat} ₺",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  print("${urun.ad} sepete eklendi ");
                                },
                                child: const Text("Sepete Ekle"))
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
