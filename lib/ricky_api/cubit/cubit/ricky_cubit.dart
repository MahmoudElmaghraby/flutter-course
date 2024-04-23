import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'ricky_state.dart';

class RickyCubit extends Cubit<RickyState> {
  RickyCubit() : super(RickyInitial());

  static RickyCubit get(context) => BlocProvider.of(context);

  int? itemsCount;

  Response? myData;
  void getData() {
    Dio().get('https://rickandmortyapi.com/api/character').then((value) {
      myData = value;
      itemsCount = value.data['results'].length;
      emit(RickyGetData());
    });
  }
}
