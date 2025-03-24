import 'package:my_home/data/database/tables/day_menu_tables.dart';
import 'package:my_home/data/models/day_menu.dart';
import 'package:sqflite/sqflite.dart';
import 'package:my_home/data/models/food.dart';

class DayMenuDao {
  final Database db;

  DayMenuDao({required this.db});

  Future<int> insertDayMenu(DayMenu dayMenu) async {
    try {
      int dayMenuId = await db.insert(DayMenuTable.tableName, {
        DayMenuTable.dateColumn: dayMenu.date,
      });

      List<Future<int>> foodFutures =
          dayMenu.foods.map((food) async {
            int foodId = await db.insert(FoodTable.tableName, food.toJson());
            return db.insert(DayMenuFoodTable.tableName, {
              DayMenuFoodTable.dayMenuIdColumn: dayMenuId,
              DayMenuFoodTable.foodIdColumn: foodId,
            });
          }).toList();

      await Future.wait(foodFutures);
      return dayMenuId;
    } catch (e) {
      print("Error inserting DayMenu: $e");
      rethrow;
    }
  }

  Future<List<DayMenu>> getDayMenu(String date) async {
    try {
      final dayMenuList = await db.query(
        DayMenuTable.tableName,
        where: '${DayMenuTable.dateColumn} = ?',
        whereArgs: [date],
      );

      List<DayMenu> dayMenus = [];
      for (var dayMenuData in dayMenuList) {
        List<Food> foods = await _getFoodsForDayMenu(
          dayMenuData[DayMenuTable.idColumn] as int,
        );
        dayMenus.add(
          DayMenu(
            date: dayMenuData[DayMenuTable.dateColumn] as String,
            foods: foods,
          ),
        );
      }
      return dayMenus;
    } catch (e) {
      print("Error getting DayMenu: $e");
      rethrow;
    }
  }

  Future<List<Food>> _getFoodsForDayMenu(int dayMenuId) async {
    try {
      final results = await db.rawQuery(
        '''SELECT f.* FROM food f INNER JOIN dayMenuFood dm ON f.id = dm.foodId WHERE dm.dayMenuId = ?''',
        [dayMenuId],
      );
      return results
          .map((e) => Food.fromJson(Map<String, dynamic>.from(e)))
          .toList();
    } catch (e) {
      print("Error getting foods for DayMenu: $e");
      rethrow;
    }
  }
}
