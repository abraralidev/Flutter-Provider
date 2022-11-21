// ignore_for_file: prefer_final_fields



import 'package:flutter/foundation.dart';

class FavouriteItems with ChangeNotifier {
  List<int> _favouriteItems = [];

  List<int> get favouriteItems => _favouriteItems;

  void addFavouriteItem(int item) {
    _favouriteItems.add(item);
    notifyListeners();
  }

  void removeFavouriteItem(int item) {
    _favouriteItems.remove(item);
    notifyListeners();
  }
  
}