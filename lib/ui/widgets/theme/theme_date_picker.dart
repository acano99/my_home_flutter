import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeDatePicker extends StatelessWidget {
  final VoidCallback onTap;
  final String date;

  const ThemeDatePicker({super.key, required this.onTap, required this.date});

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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 12,
            children: [
              Icon(Icons.calendar_month_rounded, size: 36),
              Text(date, style: GoogleFonts.poppins().copyWith(fontSize: 36)),
            ],
          ),
        ),
      ),
    );
  }
}
