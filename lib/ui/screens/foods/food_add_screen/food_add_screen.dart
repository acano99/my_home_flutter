import 'package:flutter/material.dart';
import 'package:my_home/data/enums/fab_type.dart';
import 'package:my_home/data/enums/food_type.dart';
import 'package:my_home/data/models/day_menu.dart';
import 'package:my_home/data/models/food.dart';
import 'package:my_home/domain/helpers/foramt_date.dart';
import 'package:my_home/ui/screens/common/common_screen.dart';
import 'package:my_home/ui/screens/foods/food_add_screen/food_add_controller.dart';
import 'package:my_home/ui/widgets/theme/theme_container.dart';
import 'package:my_home/ui/widgets/theme/theme_date_picker.dart';
import 'package:my_home/ui/widgets/theme/theme_fab.dart';
import 'package:my_home/ui/widgets/theme/theme_food.dart';
import 'package:my_home/ui/widgets/theme/theme_icon_header.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//TODO: Agregar el formulario para facilitar la validacion
class FoodAddScreen extends ConsumerWidget {
  const FoodAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(foodAddControllerProvider);

    final List<String> foodsType = [
      "Desayuno",
      "Almuerzo",
      "Merienda",
      "Comida",
    ];
    final TextEditingController foodController = TextEditingController();

    return CommonScreen(
      appBarTitle: 'Add Food',
      fab: ThemeFab(
        onPressed: () {
          ref
              .read(foodAddControllerProvider.notifier)
              .insertDayMenu(
                DayMenu(
                  date: formatDate(DateTime.now()),
                  foods: [
                    Food(name: "Test 1", type: FoodType.almuerzo),
                    Food(name: "Test 2", type: FoodType.comida),
                    Food(name: "Test 3", type: FoodType.desayuno),
                    Food(name: "Test 4", type: FoodType.merienda),
                  ],
                ),
              );
        },
        fabType: FabType.save,
      ),
      childrens: [
        ThemeDatePicker(onTap: () {}),
        SizedBox(height: 8),
        ThemeContainer(
          spacing: 20,
          childrens: [
            ThemeIconHeader(
              icon: Icons.restaurant_menu_rounded,
              title: "Nueva Comida",
            ),
            Wrap(
              runSpacing: 8,
              spacing: 12,
              children: List.generate(
                foodsType.length,
                (index) => FilterChip(
                  selected: uiState.index == index,
                  label: Text(foodsType[index]),
                  onSelected: (_) {
                    ref
                        .read(foodAddControllerProvider.notifier)
                        .setIndex(index);
                  },
                ),
              ),
            ),

            TextField(
              controller: foodController,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                onPressed: () {
                  ref
                      .read(foodAddControllerProvider.notifier)
                      .setFood(
                        Food(
                          name: foodController.text,
                          type: FoodType.almuerzo,
                        ),
                      );
                },
                child: Text("Agregar a la planificacion"),
              ),
            ),
          ],
        ),
        if (uiState.foods.isNotEmpty) SizedBox(height: 8),
        ...List.generate(
          uiState.foods.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ThemeFood(
              foodType: uiState.foods![index].type.name,
              food: uiState.foods![index].name,
            ),
          ),
        ),
      ],
    );
  }
}
