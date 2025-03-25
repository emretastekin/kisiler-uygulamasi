import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>> {

  AnasayfaCubit():super(<Kisiler>[]);

  var krepo = KisilerDaoRepository();
  Future<void> kisileriYukle() async{
    var liste = await krepo.kisileriYukle();
    emit(liste);
  }
}