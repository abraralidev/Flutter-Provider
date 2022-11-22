// ignore_for_file: must_be_immutable, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/provider.dart';
import 'favourite_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<int> selecteditem = [];
  @override
  Widget build(BuildContext context) {
    // Step 1 => call provider class you have made in Provider Folder
    final providerfavourite = Provider.of<FavouriteItems>(context);
    // -----------------------------------------------------------------------
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const FavouriteScreen()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Text $index'),
                  onTap: () {
                    // step 2 => add some conditions for add item and remove item from favourite screen
                    if (providerfavourite.favouriteItems.contains(index)) {
                      providerfavourite.removeFavouriteItem(index);
                    } else {
                      providerfavourite.addFavouriteItem(index);
                    }
                  
                  },
                  // Step 3 => add consumer widget and add the icon and add conditions
                  trailing: Consumer<FavouriteItems>(
                    builder: (context, myType, child) {
                      return Icon(
                    providerfavourite.favouriteItems.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: providerfavourite.favouriteItems.contains(index)
                        ? Colors.red
                        : Colors.grey,
                  );
                    },
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
