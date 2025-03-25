import 'package:get_it/get_it.dart';
import 'package:my_home/config/router/app_router.dart';

final GetIt getIt = GetIt.instance;

void getItInit() {
  getIt.registerLazySingleton(() => AppRouterCubit());
}
