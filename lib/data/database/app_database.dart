import 'package:my_home/data/database/tables/day_menu_tables.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AppDatabase {
  static const String _databaseName = "my_home.db";
  static const int _databaseVersion = 1;
  static late Database _database;
  static AppDatabase? _instance;

  AppDatabase._internal();

  factory AppDatabase() => _instance ??= AppDatabase._internal();

  Future<Database> get database async {
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), _databaseName);
    return openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(DayMenuTable.createTable);
    await db.execute(FoodTable.createTable);
    await db.execute(DayMenuFoodTable.createTable);
  }

  // TODO: Futura implementacion
  Future<void> _onUpgrade(Database db, int oldVerion, int newVersion) async {}
}
