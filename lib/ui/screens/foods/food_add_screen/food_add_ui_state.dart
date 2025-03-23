import 'package:my_home/data/models/food.dart';

class FoodAddUiState {
  int? index;
  List<Food> foods = [];

  FoodAddUiState(this.foods, {this.index = 0});
}
