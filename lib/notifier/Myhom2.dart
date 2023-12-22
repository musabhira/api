import 'package:api4/notifier/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Myhome2 extends ConsumerWidget {
  const Myhome2({super.key});

  get child => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Oman Qurasi',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter value', style: TextStyle(fontSize: 20)),
            Consumer(builder: (context, ref, child) {
              final counter = ref.watch(Counterp);
              return Text('$counter');
            }),
            ElevatedButton(
              onPressed: () {
                ref.read(Counterp.notifier).decriment();
              },
              child: Icon(Icons.rice_bowl),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(Counterp.notifier).increment();
              },
              child: Icon(Icons.device_thermostat_outlined),
            ),
            Container(
              width: 150,
              height: 50,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(color: Colors.red),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Container(
                width: 150,
                height: 50,
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(color: Colors.red),
                    ),
                    Expanded(
                      child: Container(color: Colors.blue),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
