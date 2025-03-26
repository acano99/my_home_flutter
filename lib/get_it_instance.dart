import 'package:get_it/get_it.dart';
import 'package:my_home/config/router/app_router.dart';
import 'package:my_home/config/theme/app_theme.dart';
import 'package:my_home/domain/helpers/foramt_date.dart';
import 'package:my_home/domain/usecase/get_day_menu_use_case.dart';
import 'package:my_home/ui/blocs/date/date_cubit.dart';
import 'package:my_home/ui/blocs/day_menu/day_menu_bloc.dart';

final GetIt getIt = GetIt.instance;

void getItInit() {
  getIt.registerLazySingleton(() => AppRouterCubit());
  getIt.registerLazySingleton(() => AppThemeCubit());
  getIt.registerLazySingleton(
    () => DayMenuBloc(getDayMenuUseCase: getDayMenuUSeCase),
  );
  getIt.registerSingleton(DateCubit(date: formatDate(DateTime.now())));
}
