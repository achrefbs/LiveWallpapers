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
          img: "assets/animals/thumbnails/animals(1).jpg",
          video: "assets/abstract/MOBILE-Neon-City-Sunrise.mp4",
        ),
      ],
    ),
    Category(
      name: "Animals",
      image: "assets/categories/animals.jpg",
      wallpapers: [
        Wallpaper(
          img: "assets/animals/thumbnails/animals(1).jpg",
          video: "assets/animals/animals(1).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(2).jpg",
          video: "assets/animals/animals(2).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(3).jpg",
          video: "assets/animals/animals(3).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(4).jpg",
          video: "assets/animals/animals(4).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(5).jpg",
          video: "assets/animals/animals(5).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(6).jpg",
          video: "assets/animals/animals(6).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(7).jpg",
          video: "assets/animals/animals(7).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(8).jpg",
          video: "assets/animals/animals(8).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(9).jpg",
          video: "assets/animals/animals(9).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(10).jpg",
          video: "assets/animals/animals(10).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(11).jpg",
          video: "assets/animals/animals(11).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(12).jpg",
          video: "assets/animals/animals(12).mp4",
        ),
        Wallpaper(
          img: "assets/animals/thumbnails/animals(13).jpg",
          video: "assets/animals/animals(13).mp4",
        ),
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
