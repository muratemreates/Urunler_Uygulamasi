import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunler_uygulamasi/data/entity/urunler.dart';
import 'package:urunler_uygulamasi/data/repo/urunlerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Urunler>> {
  AnasayfaCubit() : super(<Urunler>[]);

  var urepo = UrunlerReposityory();

  Future<void> urunlerGetir() async {
    var list = await urepo.urunleriGetir();
    emit(list);
  }
}
