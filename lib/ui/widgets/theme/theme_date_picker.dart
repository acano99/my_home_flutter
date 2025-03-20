import 'package:flutter/material.dart';

class ThemeDatePicker extends StatelessWidget {
  final VoidCallback onTap;

  const ThemeDatePicker({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final double radius = 12.0;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 12,
            children: [
              Icon(Icons.calendar_month_rounded),
              Text("20/20/2020", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
