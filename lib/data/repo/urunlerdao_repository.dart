import 'package:urunler_uygulamasi/data/entity/urunler.dart';

class UrunlerReposityory {
  Future<List<Urunler>> urunleriGetir() async {
    var urunlerListesi = <Urunler>[];
    var u1 = Urunler(
        id: 1, ad: "Macbook Pro 14", resim: "bilgisayar.png", fiyat: 43000);
    var u2 = Urunler(
        id: 2, ad: "Rayban Club Master", resim: "gozluk.png", fiyat: 2500);
    var u3 = Urunler(
        id: 3, ad: "Sony ZX Series", resim: "kulaklik.png", fiyat: 40000);
    var u4 = Urunler(id: 4, ad: "Gio Armani", resim: "parfum.png", fiyat: 2000);
    var u5 =
        Urunler(id: 5, ad: "Casio X Series", resim: "saat.png", fiyat: 8000);
    var u6 = Urunler(id: 6, ad: "Dyson V8", resim: "supurge.png", fiyat: 18000);
    var u7 =
        Urunler(id: 7, ad: "Iphone 13", resim: "telefon.png", fiyat: 32000);
    urunlerListesi.addAll([u1, u2, u3, u4, u5, u6, u7]);
    print(urunlerListesi);
    return urunlerListesi;
  }
}
