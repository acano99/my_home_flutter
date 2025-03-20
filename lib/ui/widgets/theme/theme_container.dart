import 'package:flutter/material.dart';

class ThemeContainer extends StatelessWidget {
  final List<Widget> childrens;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final double spacing;

  const ThemeContainer({
    super.key,
    required this.childrens,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.spacing = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          spacing: spacing,
          children: childrens,
        ),
      ),
    );
  }
}
