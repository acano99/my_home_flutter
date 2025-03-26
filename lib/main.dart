import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_home/config/router/app_router.dart';
import 'package:my_home/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_home/data/database/app_database.dart';
import 'package:my_home/get_it_instance.dart';
import 'package:my_home/ui/blocs/date/date_cubit.dart';
import 'package:my_home/ui/blocs/day_menu/day_menu_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getItInit();
  try {
    await AppDatabase().database;
  } catch (e) {
    print(e);
  }
  runApp(ProviderScope(child: Blocs()));
}

class Blocs extends StatelessWidget {
  const Blocs({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AppRouterCubit>()),
        BlocProvider(create: (context) => getIt<AppThemeCubit>()),
        BlocProvider(create: (context) => getIt<DayMenuBloc>()),
        BlocProvider(create: (context) => getIt<DateCubit>()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = context.watch<AppThemeCubit>().state;
    final appRouter = context.watch<AppRouterCubit>().state;

    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(darkMode),
    );
  }
}
