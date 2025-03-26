import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_home/config/router/routes.dart';
import 'package:my_home/data/enums/fab_type.dart';
import 'package:my_home/domain/helpers/foramt_date.dart';
import 'package:my_home/ui/blocs/date/date_cubit.dart';
import 'package:my_home/ui/blocs/day_menu/day_menu_bloc.dart';
import 'package:my_home/ui/screens/common/common_screen.dart';
import 'package:my_home/ui/widgets/theme/theme_container.dart';
import 'package:my_home/ui/widgets/theme/theme_date_picker.dart';
import 'package:my_home/ui/widgets/theme/theme_fab.dart';
import 'package:my_home/ui/widgets/theme/theme_food.dart';
import 'package:my_home/ui/widgets/theme/theme_icon_header.dart';

class FoodHomeScreen extends StatelessWidget {
  const FoodHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var date = formatDate(DateTime.now());
    final dayMenuBloc = context.read<DayMenuBloc>();
    final dateCubit = context.watch<DateCubit>();

    Future.microtask(() {
      dayMenuBloc.add(DayMenuGetByDateEvent(date: dateCubit.state.date));
    });

    return CommonScreen(
      appBarTitle: "Foods",
      fab: ThemeFab(
        onPressed: () {
          if (context.mounted) context.goNamed(Routes.foodAdd);
        },
        fabType: FabType.add,
      ),
      childrens: [
        ThemeDatePicker(
          date: dateCubit.state.date,
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 365)),
              lastDate: DateTime.now().add(Duration(days: 365)),
            );
            if (date != null) {
              dateCubit.setDate(formatDate(date));
              dayMenuBloc.add(DayMenuGetByDateEvent(date: (formatDate(date))));
            }
          },
        ),

        BlocBuilder<DayMenuBloc, DayMenuState>(
          builder: (context, state) {
            switch (state) {
              case DayMenuLoadingState():
                return CircularProgressIndicator();
              case DayMenuLoadedState():
                return Column(
                  children: [
                    SizedBox(height: 8),
                    ThemeContainer(
                      childrens: [
                        ThemeIconHeader(
                          icon: Icons.local_restaurant_rounded,
                          title: "Comidas Planificadas",
                        ),
                        ...state.dayMenu.foods.map(
                          (e) => ThemeFood(foodType: e.type.name, food: e.name),
                        ),
                      ],
                    ),
                  ],
                );
              case DayMenuErrorState():
                return Center(child: Text(state.message));
            }
          },
        ),
      ],
    );
  }
}
