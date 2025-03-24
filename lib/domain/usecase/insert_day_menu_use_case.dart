import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_home/data/database/dao/day_menu_dao.dart';
import 'package:my_home/data/models/day_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_home/data/database/app_database.dart';

part 'insert_day_menu_use_case.g.dart';

@riverpod
Future<int> insertDayMenuUseCase(Ref ref, DayMenu dayMenu) async =>
    DayMenuDao(db: await AppDatabase().database).insertDayMenu(dayMenu);
