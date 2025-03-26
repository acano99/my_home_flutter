part of 'date_cubit.dart';

class DateState extends Equatable {
  final String date;

  const DateState({this.date = ""});

  DateState copyWith({String? date}) => DateState(date: date ?? this.date);

  @override
  List<Object> get props => [date];
}
