import 'package:my_home/data/models/food.dart';
import 'package:json_annotation/json_annotation.dart';

part 'day_menu.g.dart';

@JsonSerializable()
class DayMenu {
  final int? id = null;
  final String date;
  final List<Food> foods;

  DayMenu({required this.date, required this.foods});

  factory DayMenu.fromJson(Map<String, dynamic> json) =>
      _$DayMenuFromJson(json);

  Map<String, dynamic> toJson() => _$DayMenuToJson(this);
}
