import 'package:equatable/equatable.dart';
import 'package:my_home/data/models/food.dart';
import 'package:json_annotation/json_annotation.dart';

part 'day_menu.g.dart';

@JsonSerializable()
class DayMenu extends Equatable {
  final int? id;
  final String date;
  final List<Food> foods;

  const DayMenu({this.id, required this.date, required this.foods});

  DayMenu copyWith({
    final int? id,
    final String? date,
    final List<Food>? foods,
  }) => DayMenu(id: id, date: date ?? this.date, foods: foods ?? this.foods);

  factory DayMenu.fromJson(Map<String, dynamic> json) =>
      _$DayMenuFromJson(json);

  Map<String, dynamic> toJson() => _$DayMenuToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, date, foods];
}
