part of 'day_menu_bloc.dart';

sealed class DayMenuState extends Equatable {
  const DayMenuState();

  @override
  List<Object> get props => [];
}

class DayMenuLoadingState extends DayMenuState {}

class DayMenuLoadedState extends DayMenuState {
  final DayMenu dayMenu;
  const DayMenuLoadedState({required this.dayMenu});

  @override
  List<Object> get props => [dayMenu];
}

class DayMenuErrorState extends DayMenuState {
  final String message;
  const DayMenuErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
