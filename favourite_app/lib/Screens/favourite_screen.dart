import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/provider.dart';
import 'home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerfavourite = Provider.of<FavouriteItems>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: providerfavourite.favouriteItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text('Text $index'),
                    onTap: () {
                      if (providerfavourite.favouriteItems.contains(index)) {
                        providerfavourite.removeFavouriteItem(index);
                      } else {
                        providerfavourite.addFavouriteItem(index);
                      }
                    },
                    trailing: Consumer<FavouriteItems>(
                      builder: (context, myType, child) {
                        return Icon(
                          providerfavourite.favouriteItems.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              providerfavourite.favouriteItems.contains(index)
                                  ? Colors.red
                                  : Colors.grey,
                        );
                      },
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
