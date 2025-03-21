import 'package:flutter/material.dart';
import 'package:my_home/data/enums/food_type.dart';
import 'package:my_home/data/models/food.dart';
import 'package:my_home/ui/screens/common/common_screen.dart';
import 'package:my_home/ui/widgets/theme/theme_container.dart';
import 'package:my_home/ui/widgets/theme/theme_date_picker.dart';
import 'package:my_home/ui/widgets/theme/theme_food.dart';
import 'package:my_home/ui/widgets/theme/theme_icon_header.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//TODO: Agregar el formulario para facilitar la validacion
class FoodAddScreen extends ConsumerStatefulWidget {
  const FoodAddScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FoodAddScreenState();
}

class _FoodAddScreenState extends ConsumerState<FoodAddScreen> {
  int i = 0;
  List<Food> foods = [];

  @override
  Widget build(BuildContext context) {
    final List<String> foodsType = [
      "Desayuno",
      "Almuerzo",
      "Merienda",
      "Comida",
    ];
    final TextEditingController foodController = TextEditingController();

    return CommonScreen(
      appBarTitle: 'Add Food',
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
                  selected: i == index,
                  label: Text(foodsType[index]),
                  onSelected: (_) {
                    setState(() {
                      i = index;
                    });
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
                  setState(() {
                    foods.add(
                      Food(name: foodController.text, type: FoodType.almuerzo),
                    );
                  });
                },
                child: Text("Agregar a la planificacion"),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        ...List.generate(
          foods.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ThemeFood(),
          ),
        ),
      ],
    );
  }
}
