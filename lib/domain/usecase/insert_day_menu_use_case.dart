import 'package:my_home/data/database/dao/day_menu_dao.dart';
import 'package:my_home/data/models/day_menu.dart';
import 'package:my_home/data/database/app_database.dart';

Future<int> insertDayMenuUseCase(DayMenu dayMenu) async =>
    DayMenuDao(db: await AppDatabase().database).insertDayMenu(dayMenu);
