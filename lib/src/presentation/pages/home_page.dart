import 'package:apod/src/app/environment.dart';
import 'package:flutter/material.dart';
import 'package:stark/stark.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final environment = Stark.get<Environment>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      alignment: Alignment.center,
      child: Text(
        environment.baseUrl,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
