import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier{
  final List<String> _favList = [];
  List get favList => _favList;

  void addFav(val){
    _favList.add(val.toString());
    notifyListeners();
  }
  void remFav(val){
    _favList.remove(val.toString());
    notifyListeners();
  }

}