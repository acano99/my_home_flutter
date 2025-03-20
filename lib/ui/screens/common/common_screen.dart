import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_home/config/theme/app_theme.dart';

class CommonScreen extends StatelessWidget {
  final String appBarTitle;
  final List<Widget> childrens;
  final Widget? fab;

  const CommonScreen({
    super.key,
    required this.appBarTitle,
    required this.childrens,
    this.fab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          //_SwitchTheme(),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_rounded)),
          SizedBox(width: 8),
        ],
      ),
      floatingActionButton: fab,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: childrens,
      ),
    );
  }
}

// class _SwitchTheme extends ConsumerStatefulWidget {
//   const _SwitchTheme();

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _SwitchThemeState();
// }

// class _SwitchThemeState extends ConsumerState<_SwitchTheme> {
//   var darkMode = false;
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         ref.read(appThemeProvider(darkTheme: false));
//       },
//       icon: Icon(Icons.dark_mode_rounded),
//     );
//   }
// }
