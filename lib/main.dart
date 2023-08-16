import 'package:flutter/material.dart';

import 'implements/counter_repository_impl.dart';
import 'repositories/counter_repository.dart';
import 'screens/counter_screen.dart';

void main() {
  final repository = CounterRepositoryImpl();
  runApp(MyApp(repository));
}

class MyApp extends StatelessWidget {
  const MyApp(
    this.repository, {
    super.key,
  });
  final CounterRepository repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: CounterScreen(repository),
    );
  }
}
