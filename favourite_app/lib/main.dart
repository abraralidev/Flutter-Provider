import 'package:favourite_app/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Step 1 if you want to add multiple providers 
    // add MultiProvider like this 
    return MultiProvider(
      
      providers: [
        // here you can add multiple provider classes
        ChangeNotifierProvider(
          create: (context) => FavouriteItems(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Favourite App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  Home(),
      ),
    );
  }
}
