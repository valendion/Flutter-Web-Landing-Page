import 'package:flutter_bloc/flutter_bloc.dart';

class IndicatorPageCubit extends Cubit<int> {
  IndicatorPageCubit({this.page = 0}) : super(page);
  int page;

  void movePage(int page) {
    return emit(page);
  }
}
