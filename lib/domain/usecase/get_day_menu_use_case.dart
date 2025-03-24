import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_home/data/database/app_database.dart';
import 'package:my_home/data/database/dao/day_menu_dao.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_day_menu_use_case.g.dart';

@riverpod
Future<int> getDayMenuUSeCase(Ref ref, String date) async {
  try {
    DayMenuDao(db: await AppDatabase().database).getDayMenu(date);
    return 1;
  } catch (e) {
    print(e);
    return 0;
  }
}
