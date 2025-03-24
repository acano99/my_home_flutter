import 'package:my_home/data/database/tables/day_menu_tables.dart';
import 'package:my_home/data/models/day_menu.dart';
import 'package:sqflite/sqlite_api.dart';

class DayMenuDao {
  final Database db;

  DayMenuDao({required this.db});

  Future<int> insertDayMenu(DayMenu dayMenu) async =>
      db.insert(DayMenuTable.tableName, {});

  Future<void> getDayMenu(String date) async =>
      db.query(DayMenuTable.tableName);
}
