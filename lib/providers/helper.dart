import 'package:flutter/material.dart';
import 'package:live_wallpaper/models/category.dart';

var categories = [
  const Category(
    name: "Nature",
    image: "assets/images/nature.jpg",
  ),
  const Category(
    name: "City",
    image: "assets/images/city.jpg",
  ),
  const Category(
    name: "Abstract",
    image: "assets/images/abstract.jpg",
  ),
  const Category(
    name: "Animal",
    image: "assets/images/animal.jpg",
  ),
  const Category(
    name: "Car",
    image: "assets/images/car.jpg",
  ),
  const Category(
    name: "Love",
    image: "assets/images/love.jpg",
  ),
];

class Helper extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();
  }
}
