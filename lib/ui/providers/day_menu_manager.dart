import 'package:my_home/data/models/day_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'day_menu_manager.g.dart';

@riverpod
class DayMenuManager extends _$DayMenuManager {
  @override
  Future<DayMenu> build() async {
    return DayMenu(date: DateTime.now().toString(), foods: []);
  }

  Future<void> getDayMenu(String date) async {}

  Future<void> addDayMenu(DayMenu dayMenu) async {
    DayMenu newDayMenu = DayMenu(date: "", foods: []);
    state = AsyncData(newDayMenu);
  }
}
