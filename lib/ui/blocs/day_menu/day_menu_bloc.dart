import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_home/data/models/day_menu.dart';

part 'day_menu_event.dart';
part 'day_menu_state.dart';

class DayMenuBloc extends Bloc<DayMenuEvent, DayMenuState> {
  final Future<List<DayMenu>> Function(String date) _getDayMenuUSeCase;

  DayMenuBloc({
    required Future<List<DayMenu>> Function(String date) getDayMenuUseCase,
  }) : _getDayMenuUSeCase = getDayMenuUseCase,
       super(DayMenuLoadingState()) {
    on<DayMenuGetByDateEvent>(_getdDayMenu);
  }

  Future<void> _getdDayMenu(
    DayMenuGetByDateEvent event,
    Emitter<DayMenuState> emit,
  ) async {
    emit(DayMenuLoadingState());
    try {
      final dayMenu = await _getDayMenuUSeCase(event.date);
      emit(DayMenuLoadedState(dayMenu: dayMenu.first));
    } catch (e) {
      emit(DayMenuErrorState(message: e.toString()));
    }
  }
}
