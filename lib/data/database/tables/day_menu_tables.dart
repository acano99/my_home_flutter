class DayMenuTable {
  static const String tableName = "dayMenu";

  static const String createTable = '''
  CREATE TABLE $tableName (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
   date TEXT UNIQUE NOT NULL
   )''';
}
