import 'package:equatable/equatable.dart';
import 'package:my_home/data/enums/food_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food extends Equatable {
  final int id;
  final String name;
  final FoodType type;

  const Food({this.id = 0, required this.name, required this.type});

  Food copyWith({final int? id, final String? name, final FoodType? type}) =>
      Food(id: id ?? this.id, name: name ?? this.name, type: type ?? this.type);

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);

  @override
  List<Object?> get props => [id, name, type];
}
