import 'package:bloc/bloc.dart';
import 'package:my_home/config/router/routes.dart';
import 'package:go_router/go_router.dart';

import '../../ui/screens/screens.dart';

/// Definicion de las rutas del proyecto y el cubit correspondiente
/// para el manejo de las mismas

final GoRouter _router = GoRouter(
  initialLocation: Routes.foodHome,
  routes: [
    GoRoute(
      path: Routes.foodHome,
      builder: (context, state) => FoodHomeScreen(),
      name: Routes.foodHome,
    ),
    GoRoute(
      path: Routes.foodAdd,
      builder: (context, state) => FoodAddScreen(),
      name: Routes.foodAdd,
    ),
  ],
);

class AppRouterCubit extends Cubit<GoRouter> {
  AppRouterCubit() : super(_router);
}
