import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'price_state.dart';

class PriceCubit extends Cubit<PriceState> {
  PriceCubit() : super(PriceInitial());
  static bool isbuttonpressed = false;

  void updatePrice1() {
    isbuttonpressed = true;

    emit(Pricesuccess());
  }

  void updatePrice2() {
    isbuttonpressed = false;
    emit(Pricesuccess());
  }
}
