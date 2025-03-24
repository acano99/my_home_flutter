// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayMenu _$DayMenuFromJson(Map<String, dynamic> json) => DayMenu(
  date: json['date'] as String,
  foods:
      (json['foods'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$DayMenuToJson(DayMenu instance) => <String, dynamic>{
  'date': instance.date,
  'foods': instance.foods,
};
