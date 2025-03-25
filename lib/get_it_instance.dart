import 'package:get_it/get_it.dart';
import 'package:my_home/config/router/app_router.dart';
import 'package:my_home/config/theme/app_theme.dart';

final GetIt getIt = GetIt.instance;

void getItInit() {
  getIt.registerLazySingleton(() => AppRouterCubit());
  getIt.registerLazySingleton(() => AppThemeCubit());
}
