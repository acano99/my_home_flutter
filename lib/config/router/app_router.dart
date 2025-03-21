import 'package:my_home/config/router/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../ui/screens/foods/food_home_sceen.dart';
import '../../ui/screens/foods/food_add_screen.dart';

part 'app_router.g.dart';

@riverpod
class AppRouter extends _$AppRouter {
  final GoRouter _router = GoRouter(
    initialLocation: Routes.foodHome,
    routes: [
      GoRoute(
        path: Routes.foodHome,
        builder: (context, state) => FoodHomeSceen(),
        name: Routes.foodHome,
      ),
      GoRoute(
        path: Routes.foodAdd,
        builder: (context, state) => FoodAddScreen(),
        name: Routes.foodAdd,
      ),
    ],
  );
  @override
  GoRouter build() => _router;
}
