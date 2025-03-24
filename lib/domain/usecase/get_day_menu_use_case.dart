import 'package:my_home/data/database/app_database.dart';
import 'package:my_home/data/database/dao/day_menu_dao.dart';
import 'package:my_home/data/models/day_menu.dart';

Future<List<DayMenu>> getDayMenuUSeCase(String date) async =>
    DayMenuDao(db: await AppDatabase().database).getDayMenu(date);
