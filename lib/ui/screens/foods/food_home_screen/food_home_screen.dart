import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_home/config/router/routes.dart';
import 'package:my_home/data/enums/fab_type.dart';
import 'package:my_home/ui/screens/common/common_screen.dart';
import 'package:my_home/ui/screens/foods/food_home_screen/food_home_controller.dart';
import 'package:my_home/ui/widgets/theme/theme_container.dart';
import 'package:my_home/ui/widgets/theme/theme_date_picker.dart';
import 'package:my_home/ui/widgets/theme/theme_fab.dart';
import 'package:my_home/ui/widgets/theme/theme_food.dart';
import 'package:my_home/ui/widgets/theme/theme_icon_header.dart';

class FoodHomeScreen extends ConsumerWidget {
  const FoodHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonScreen(
      appBarTitle: "Foods",
      fab: ThemeFab(
        onPressed: () {
          if (context.mounted) context.goNamed(Routes.foodAdd);
        },
        fabType: FabType.add,
      ),
      childrens: [
        ThemeDatePicker(onTap: () {}),
        Consumer(
          builder: (context, ref, child) {
            final uiState = ref.watch(foodHomeControllerProvider);

            return uiState.when(
              data:
                  (data) =>
                      data.dayMenu != null
                          ? Column(
                            children: [
                              SizedBox(height: 8),
                              ThemeContainer(
                                childrens: [
                                  ThemeIconHeader(
                                    icon: Icons.local_restaurant_rounded,
                                    title: "Comidas Planificadas",
                                  ),
                                  ...data.dayMenu!.foods.map(
                                    (e) => ThemeFood(
                                      foodType: e.type.name,
                                      food: e.name,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                          : Text("No hay data"),
              error:
                  (error, stackTrace) => Center(child: Text('Error: $error')),
              loading: () => Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ],
    );
  }
}
