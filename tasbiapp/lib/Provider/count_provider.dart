// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int _count = 20;
  int get count => _count;

  void setcounteradd() {
    _count++;
    notifyListeners();
  }
    void setcounter() {
    _count--;
    notifyListeners();
  }
}
