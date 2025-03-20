import 'package:flutter/material.dart';
import 'package:my_home/data/enums/fab_type.dart';
import 'package:my_home/ui/screens/common/common_screen.dart';
import 'package:my_home/ui/widgets/theme/theme_container.dart';
import 'package:my_home/ui/widgets/theme/theme_date_picker.dart';
import 'package:my_home/ui/widgets/theme/theme_fab.dart';
import 'package:my_home/ui/widgets/theme/theme_food.dart';
import 'package:my_home/ui/widgets/theme/theme_icon_header.dart';

class FoodHomeSceen extends StatelessWidget {
  const FoodHomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      appBarTitle: "Foods",
      fab: ThemeFab(onPressed: () {}, fabType: FabType.add),
      childrens: [
        ThemeDatePicker(onTap: () {}),
        SizedBox(height: 8),
        ThemeContainer(
          childrens: [
            ThemeIconHeader(
              icon: Icons.local_restaurant_rounded,
              title: "Comidas Planificadas",
            ),
            ThemeFood(),
            ThemeFood(),
            ThemeFood(),
            ThemeFood(),
          ],
        ),
      ],
    );
  }
}
