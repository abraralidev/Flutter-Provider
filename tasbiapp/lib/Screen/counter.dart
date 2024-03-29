// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasbiapp/Provider/count_provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    // Step 1
    final countProvider = Provider.of<CountProvider>(
      context,
      // Step 2
       listen: false
    );
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasbi App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Step 3  add  consumer widget
            
            Consumer<CountProvider>(
              builder: (context, value, child) {
            return Text(
              countProvider.count.toString(),
              style: const TextStyle(
                  fontSize: 50, fontWeight: FontWeight.bold),
            );
              },
            )
//             Text(
//               countProvider.count.toString(),
//               style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//             )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
             // Step 4
              countProvider.setcounteradd();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              countProvider.setcounter();
            },
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
