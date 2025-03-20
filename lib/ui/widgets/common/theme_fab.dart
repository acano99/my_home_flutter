import 'package:flutter/material.dart';
import 'package:my_home/data/enums/fab_type.dart';

class ThemeFab extends StatelessWidget {
  final VoidCallback onPressed;
  final FabType fabType;

  const ThemeFab({super.key, required this.onPressed, required this.fabType});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 3,
      onPressed: onPressed,
      child: Icon(switch (fabType) {
        FabType.add => Icons.add_rounded,
        FabType.save => Icons.save_rounded,
      }),
    );
  }
}
