import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      alignment: Alignment.center,
      child: Text(
        'Home Page',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
