// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
  name: json['name'] as String,
  type: $enumDecode(_$FoodTypeEnumMap, json['type']),
);

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
  'name': instance.name,
  'type': _$FoodTypeEnumMap[instance.type]!,
};

const _$FoodTypeEnumMap = {
  FoodType.desayuno: 'desayuno',
  FoodType.almuerzo: 'almuerzo',
  FoodType.merienda: 'merienda',
  FoodType.comida: 'comida',
};
