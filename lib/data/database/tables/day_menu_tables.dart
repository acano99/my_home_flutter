class DayMenuTable {
  static const String tableName = "dayMenu";
  static const String idColumn = "id";
  static const String dateColumn = "date";

  static const String createTable =
      '''CREATE TABLE $tableName ($idColumn INTEGER PRIMARY KEY AUTOINCREMENT, $dateColumn TEXT UNIQUE NOT NULL)''';
}

class FoodTable {
  static const String tableName = "food";
  static const String idColumn = "id";
  static const String nameColumn = "name";
  static const String typeColumn = "type";

  static const String createTable =
      '''CREATE TABLE $tableName ($idColumn INTEGER PRIMARY KEY AUTOINCREMENT, $nameColumn TEXT NOT NULL, $typeColumn TEXT NOT NULL)''';
}

class DayMenuFoodTable {
  static const String tableName = "dayMenuFood";
  static const String dayMenuIdColumn = "dayMenuId";
  static const String foodIdColumn = "foodId";

  static const String createTable = '''
  CREATE TABLE $tableName (
    $dayMenuIdColumn INTEGER NOT NULL,
    $foodIdColumn INTEGER NOT NULL,
    FOREIGN KEY ($dayMenuIdColumn) REFERENCES ${DayMenuTable.tableName}(${DayMenuTable.idColumn}),
    FOREIGN KEY ($foodIdColumn) REFERENCES ${FoodTable.tableName}(${FoodTable.idColumn}),
    PRIMARY KEY ($dayMenuIdColumn, $foodIdColumn)
  )''';
}
