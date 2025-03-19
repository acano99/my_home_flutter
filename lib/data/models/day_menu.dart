import 'package:my_home/data/models/food.dart';

class DayMenu {
  final int? id = null;
  final String date;
  final List<Food> foods;

  DayMenu({required this.date, required this.foods});
}
