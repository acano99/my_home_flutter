import 'package:flutter/material.dart';
import 'package:my_home/ui/screens/foods/food_home_sceen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination(label: 'Food', icon: Icons.food_bank_rounded),
    ];

    return Scaffold(
      body:
          [
            FoodHomeSceen(),
            FoodHomeSceen(),
            FoodHomeSceen(),
            FoodHomeSceen(),
          ][index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected:
            (value) => setState(() {
              index = value;
            }),
        destinations:
            destinations
                .map((e) => _NavigationComponnent(icon: e.icon, label: e.label))
                .toList(),
      ),
    );
  }
}

class _NavigationComponnent extends StatelessWidget {
  final IconData icon;
  final String label;

  const _NavigationComponnent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: Icon(icon), label: label);
  }
}

class Destination {
  final String label;
  final IconData icon;

  Destination({required this.label, required this.icon});
}
