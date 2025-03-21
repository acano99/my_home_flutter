import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_home/config/theme/app_theme.dart';

import '../../../config/router/routes.dart';

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
      drawer: Drawer(
        child: Column(
          children: [
            Container(width: double.infinity, height: 200, color: Colors.amber),
            _DrawerButton(
              icon: Icons.restaurant_menu_rounded,
              label: "Foods",
              onTap: () {
                if (context.mounted) {
                  context.goNamed(Routes.foodHome);
                }
              },
            ),
            _DrawerButton(
              icon: Icons.restaurant_menu_rounded,
              label: "Foods",
              onTap: () {
                if (context.mounted) {
                  context.goNamed(Routes.foodHome);
                }
              },
            ),
            _DrawerButton(
              icon: Icons.restaurant_menu_rounded,
              label: "Foods",
              onTap: () {
                if (context.mounted) {
                  context.goNamed(Routes.foodHome);
                }
              },
            ),
            _DrawerButton(
              icon: Icons.restaurant_menu_rounded,
              label: "Foods",
              onTap: () {
                if (context.mounted) {
                  context.goNamed(Routes.foodHome);
                }
              },
            ),
            _DrawerButton(
              icon: Icons.restaurant_menu_rounded,
              label: "Foods",
              onTap: () {
                if (context.mounted) {
                  context.goNamed(Routes.foodHome);
                }
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          _SwitchTheme(),
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

class _DrawerButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _DrawerButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(label), trailing: Icon(icon), onTap: onTap);
  }
}

class _SwitchTheme extends ConsumerStatefulWidget {
  const _SwitchTheme();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SwitchThemeState();
}

class _SwitchThemeState extends ConsumerState<_SwitchTheme> {
  var darkMode = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ref.read(appThemeProvider.notifier).switchTheme(darkMode);
      },
      icon: Icon(Icons.dark_mode_rounded),
    );
  }
}
