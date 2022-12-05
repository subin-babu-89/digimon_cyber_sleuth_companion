part of 'digimon_list_bloc.dart';

abstract class DigimonListState extends Equatable {
  const DigimonListState();
}

class DigimonListInitial extends DigimonListState {
  @override
  List<Object> get props => [];
}

class DigimonListLoaded extends DigimonListState{
  final List<String> digimonNames;

  const DigimonListLoaded({required this.digimonNames});

  @override
  List<Object?> get props => [digimonNames];


}
