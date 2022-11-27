import 'package:flutter/material.dart';
import 'package:live_wallpaper/models/category.dart';

class Helper extends ChangeNotifier {
  PageController pageController = PageController();

  int _index = 0;
  var categories = [
    const Category(
      name: "Home",
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

  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();
  }

  Category getCategory(int index) {
    return categories[index];
  }

  int getCategoryLength() {
    return categories.length;
  }

  getCategoryIndex(Category category) {
    return categories.indexOf(category);
  }

  goToPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
