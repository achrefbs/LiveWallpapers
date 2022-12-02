import 'package:flutter/material.dart';
import 'package:live_wallpaper/models/category.dart';
import 'package:live_wallpaper/models/wallpaper.dart';

class Helper extends ChangeNotifier {
  PageController pageController = PageController();

  int _index = 0;
  var categories = [
    const Category(
      name: "Home",
      image: "assets/images/nature.jpg",
      wallpapers: [],
    ),
    const Category(
      name: "Nature",
      image: "assets/categories/nature.jpg",
      wallpapers: [],
    ),
    Category(
      name: "Abstract",
      image: "assets/categories/abstract.jpg",
      wallpapers: [
        Wallpaper(
          img: "assets/abstract/thumbnails/abstract(1).jpg",
          video:
              "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(1).mp4",
        ),
        Wallpaper(
          img: "assets/abstract/thumbnails/abstract(2).jpg",
          video:
              "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(2).mp4",
        )
      ],
    ),
    Category(
      name: "Animals",
      image: "assets/categories/animals.jpg",
      wallpapers: [
        Wallpaper(
          img: "assets/animals/thumbnails/animals(1).jpg",
          video:
              "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(1).mp4",
        ),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(2).mp4"),
      ],
    ),
    const Category(
      name: "Anime",
      image: "assets/categories/anime.jpg",
      wallpapers: [],
    ),
    const Category(
      name: "Games",
      image: "assets/categories/games.jpg",
      wallpapers: [],
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
