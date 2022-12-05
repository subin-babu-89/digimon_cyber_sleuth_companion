part of 'digimon_list_bloc.dart';

abstract class DigimonListEvent extends Equatable {
  const DigimonListEvent();
}

class DigimonListFetchEvent extends DigimonListEvent {
  @override
  List<Object?> get props => [];
}
