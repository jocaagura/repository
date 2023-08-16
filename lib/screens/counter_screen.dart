import 'package:flutter/material.dart';

import '../models/counter_model.dart';
import '../repositories/counter_repository.dart';

class CounterScreen extends StatefulWidget {
  final CounterRepository repository;

  const CounterScreen(this.repository, {super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterModel _counter = CounterModel(0);

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  void _loadCounter() async {
    _counter = await widget.repository.getCounter();
    setState(() {});
  }

  void _incrementCounter() {
    _counter.increment();
    widget.repository.saveCounter(_counter);
    setState(() {});
  }

  void _decrementCounter() {
    _counter.decrement();
    widget.repository.saveCounter(_counter);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Value: ${_counter.value}'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Text('Increment')),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: _decrementCounter,
                    child: const Text('Decrement')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
