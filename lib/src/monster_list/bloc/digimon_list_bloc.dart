import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../digital_monster_entity.dart';
import '../monster_list_repository.dart';

part 'digimon_list_event.dart';
part 'digimon_list_state.dart';

class DigimonListBloc extends Bloc<DigimonListEvent, DigimonListState> {
  final MonsterListRepository repository;

  DigimonListBloc({required this.repository}) : super(DigimonListInitial()) {
    on<DigimonListFetchEvent>((event, emit) async{
      List<String> digivolutionList = await repository.getAllDigimonNames();
      emit(DigimonListLoaded(digimonNames: digivolutionList));
    });
    on<DigimonListEvent>((event, emit) {
    });
  }
}
