import 'package:my_home/data/enums/food_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  final int? id = null;
  final String name;
  final FoodType type;

  Food({required this.name, required this.type});

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
