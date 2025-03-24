import 'package:my_home/domain/helpers/foramt_date.dart';
import 'package:my_home/domain/usecase/get_day_menu_use_case.dart';
import 'package:my_home/ui/screens/foods/food_home_screen/food_home_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'food_home_controller.g.dart';

@riverpod
class FoodHomeController extends _$FoodHomeController {
  @override
  Future<FoodHomeUiState> build() async {
    final date = formatDate(DateTime.now());
    var response = ref.watch(getDayMenuUSeCaseProvider(date));
    return FoodHomeUiState(dayMenu: response.value?.firstOrNull);
  }
}
