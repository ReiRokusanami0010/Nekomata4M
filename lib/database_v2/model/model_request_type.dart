import 'package:Nekomata/Logger/NekomataLogger.dart';
import 'package:Nekomata/database_v2/types/product_type.dart';
import 'package:flutter/material.dart';

class ModelRequestType with ChangeNotifier {
  final List<ProductType> _types = [
    ProductType.HOLOLIVE,
    ProductType.NIJISANJI,
    ProductType.ANIMARE
  ];

  int _typeIndex = 0;
  int get getIndex => _typeIndex;

  void changeType(int index) {
    _typeIndex = index;
    notifyListeners();
    Logger.printInfo("request_mode", "Change request mode: ${_types[index]}");
  }

  ProductType getRequestType() {
    Logger.printInfo("request_mode", "Get request mode: ${_types[getIndex]}");
    return _types[getIndex];
  }
}