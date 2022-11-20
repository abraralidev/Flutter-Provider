// ignore_for_file: unused_local_variable, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:multiprovider/provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Providerclass>(context, listen: false);

    print("object");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Consumer<Providerclass>(builder: (context, value, child) {
          return Slider(
              min: 0.1,
              max: 1,
              value: value.opacity,
              onChanged: (val) {
                value.setCount(val);
              });
        }),
        Consumer<Providerclass>(
          builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                    child: Container(
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.opacity)),
                  child: const Center(child: Text("Containter 1")),
                )),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(value.opacity)),
                  child: const Center(child: Text("Containter 2")),
                ))
              ],
            );
          },
        )
      ]),
    );
  }
}

