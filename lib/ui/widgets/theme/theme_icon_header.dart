import 'package:flutter/material.dart';

class ThemeIconHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  const ThemeIconHeader({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
