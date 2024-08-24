import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () => context.read<CounterModel>().decrement(),
                  icon: const Icon(Icons.remove_circle_outline_outlined),
                  iconSize: 40,
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () => context.read<CounterModel>().increment(),
                  icon: const Icon(Icons.add_circle_outline),
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
