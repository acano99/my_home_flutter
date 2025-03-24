import 'package:my_home/data/models/day_menu.dart';
import 'package:my_home/data/models/food.dart';
import 'package:my_home/domain/usecase/insert_day_menu_use_case.dart';
import 'package:my_home/ui/screens/foods/food_add_screen/food_add_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'food_add_controller.g.dart';

// TODO: Revisar implementaciones con los copyWith para mejorar el
//       rendimiento
@riverpod
class FoodAddController extends _$FoodAddController {
  @override
  FoodAddUiState build() => FoodAddUiState([]);

  void setIndex(int index) {
    state = FoodAddUiState(state.foods, index: index);
  }

  void setFood(Food food) {
    var foods = state.foods;
    foods.add(food);
    state = FoodAddUiState(foods, index: state.index);
  }

  Future<void> insertDayMenu(DayMenu dayMenu) async {
    await insertDayMenuUseCase(dayMenu);
  }
}
