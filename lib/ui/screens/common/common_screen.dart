import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  final String appBarTitle;
  final List<Widget> childrens;
  final FloatingActionButton? fab;

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
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_rounded)),
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
