import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateState> {
  DateCubit({final String date = ""}) : super(DateState(date: date));

  void setDate(String date) => emit(state.copyWith(date: date));
}
