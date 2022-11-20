// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/foundation.dart';

class Providerclass with  ChangeNotifier {

   double _opacity = 1.0 ;
  double get opacity => _opacity;

  void setCount(double value) {
    _opacity = value ;
    notifyListeners();
  }
  
}