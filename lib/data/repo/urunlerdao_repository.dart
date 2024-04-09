import 'package:urunler_uygulamasi/data/entity/urunler.dart';
import 'package:urunler_uygulamasi/sqlite/veritabani_yardimcisi.dart';

class UrunlerReposityory {
  Future<List<Urunler>> urunleriGetir() async {
    var db = await VeriTabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM urunler");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Urunler(
          id: satir["id"],
          ad: satir["ad"],
          resim: satir["resim"],
          fiyat: satir["fiyat"]);
    });
  }
}
