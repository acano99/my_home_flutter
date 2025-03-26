part of 'day_menu_bloc.dart';

sealed class DayMenuEvent extends Equatable {
  const DayMenuEvent();

  @override
  List<Object> get props => [];
}

class DayMenuGetByDateEvent extends DayMenuEvent {
  final String date;

  const DayMenuGetByDateEvent({required this.date});

  @override
  List<Object> get props => [date];
}
