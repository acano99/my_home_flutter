import 'package:flutter/material.dart';

class ThemeFood extends StatelessWidget {
  const ThemeFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.restaurant_menu_rounded),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Desayuno"),
            Text("Pan con dulce guayaba y refresco"),
          ],
        ),
      ],
    );
  }
}
