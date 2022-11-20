import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasbiapp/Screen/counter.dart';

import 'Provider/count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Step 1 set change notifierProvider like this 
    return ChangeNotifierProvider(
      // Step 2 call the provider class you have made
      create: (context) => CountProvider(),
      //Step 3 return child and call the materialapp
      child: MaterialApp(
        title: 'Tasbi App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Counter(),
      ),
    );
 
  }
}
