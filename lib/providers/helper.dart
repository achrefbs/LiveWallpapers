import 'package:flutter/material.dart';
import 'package:live_wallpaper/models/category.dart';
import 'package:live_wallpaper/models/wallpaper.dart';

class Helper extends ChangeNotifier {
  PageController pageController = PageController();

  int _index = 0;
  var categories = [
    const Category(
      name: "Home",
      image: "assets/categories/abstract.jpg",
      wallpapers: [],
    ),
    Category(
      name: "Abstract",
      image: "assets/categories/abstract.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(1).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(2).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(3).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(4).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(5).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(6).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(7).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(8).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(9).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(10).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(11).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(12).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(13).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(14).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(15).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(16).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(17).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(18).mp4"),
        Wallpaper(
            img: "assets/abstract/thumbnails/abstract(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/abstract/abstract(19).mp4"),
      ],
    ),
    Category(
      name: "Animals",
      image: "assets/categories/animals.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/animals/thumbnails/animals(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(1).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(2).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(3).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(4).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(5).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(6).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(7).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(8).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(9).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(10).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(11).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(12).mp4"),
        Wallpaper(
            img: "assets/animals/thumbnails/animals(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/animals/animals(13).mp4"),
      ],
    ),
    Category(
      name: "Anime",
      image: "assets/categories/anime.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/nature/thumbnails/nature(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(1).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(2).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(3).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(4).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(5).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(6).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(7).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(8).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(9).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(10).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(11).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(12).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(13).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(14).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(15).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(16).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(17).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(18).mp4"),
      ],
    ),
    Category(
      name: "Cars",
      image: "assets/categories/cars.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/cars/thumbnails/cars(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(1).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(2).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(3).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(4).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(5).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(6).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(7).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(8).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(9).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(10).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(11).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(12).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(13).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(14).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(15).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(16).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(17).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(18).mp4"),
        Wallpaper(
            img: "assets/cars/thumbnails/cars(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/cars/cars(19).mp4"),
      ],
    ),
    Category(
      name: "City",
      image: "assets/categories/city.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/city/thumbnails/city(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(1).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(2).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(3).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(4).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(5).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(6).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(7).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(8).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(9).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(10).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(11).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(12).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(13).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(14).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(15).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(16).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(17).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(18).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(19).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(20).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(20).mp4"),
        Wallpaper(
            img: "assets/city/thumbnails/city(21).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/city/city(21).mp4"),
      ],
    ),
    Category(
      name: "Fantasy",
      image: "assets/categories/fantasy.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(4).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(5).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(6).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(7).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(8).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(9).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(10).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(11).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(12).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(13).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(14).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(15).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(16).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(17).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(18).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(19).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(20).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(20).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(21).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(21).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(22).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(22).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(23).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(23).mp4"),
        Wallpaper(
            img: "assets/fantasy/thumbnails/fantasy(24).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/fantasy/fantasy(24).mp4"),
      ],
    ),
    Category(
      name: "Comics",
      image: "assets/categories/comics.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/comics/thumbnails/comics(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(1).mp4"),
        Wallpaper(
            img: "assets/comics/thumbnails/comics(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(2).mp4"),
        Wallpaper(
            img: "assets/comics/thumbnails/comics(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(3).mp4"),
        Wallpaper(
            img: "assets/comics/thumbnails/comics(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(4).mp4"),
        Wallpaper(
            img: "assets/comics/thumbnails/comics(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(5).mp4"),
        Wallpaper(
            img: "assets/comics/thumbnails/comics(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(6).mp4"),
        Wallpaper(
            img: "assets/comics/thumbnails/comics(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/comics/comics(7).mp4"),
      ],
    ),
    Category(
      name: "Games",
      image: "assets/categories/games.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/games/thumbnails/games(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(1).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(2).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(3).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(4).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(5).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(6).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(7).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(8).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(9).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(10).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(11).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(12).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(13).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(14).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(15).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(16).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(17).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(18).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(19).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(20).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(20).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(21).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(21).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(22).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(22).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(23).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(23).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(24).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(24).mp4"),
        Wallpaper(
            img: "assets/games/thumbnails/games(25).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/games/games(25).mp4"),
      ],
    ),
    Category(
      name: "Nature",
      image: "assets/categories/nature.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/nature/thumbnails/nature(1).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(1).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(2).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(2).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(3).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(3).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(4).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(4).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(5).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(5).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(6).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(6).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(7).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(7).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(8).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(9).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(10).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(11).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(12).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(13).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(14).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(15).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(16).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(17).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(18).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(19).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(20).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(20).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(21).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(21).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(22).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(22).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(23).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(23).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(24).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(24).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(25).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(25).mp4"),
        Wallpaper(
            img: "assets/nature/thumbnails/nature(26).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/nature/nature(26).mp4"),
      ],
    ),
    Category(
      name: "Love",
      image: "assets/categories/love.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/love/thumbnails/love(8).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(8).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(9).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(9).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(10).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(10).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(11).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(11).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(12).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(12).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(13).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(13).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(14).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(14).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(15).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(15).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(16).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(16).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(17).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(17).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(18).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(18).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(19).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(19).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(20).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(20).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(21).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(21).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(22).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(22).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(23).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(23).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(24).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(24).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(25).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(25).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(26).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(26).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(27).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(27).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(28).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(28).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(29).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(29).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(30).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(30).mp4"),
        Wallpaper(
            img: "assets/love/thumbnails/love(31).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/love/love(31).mp4"),
      ],
    ),
    Category(
      name: "Sci-Fi",
      image: "assets/categories/scifi.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(23).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(23).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(24).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(24).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(25).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(25).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(26).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(26).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(27).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(27).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(28).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(28).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(29).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(29).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(30).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(30).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(31).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(31).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(32).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(32).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(33).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(33).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(34).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(34).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(35).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(35).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(36).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(36).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(37).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(37).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(38).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(38).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(39).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(39).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(40).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(40).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(41).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(41).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(42).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(42).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(43).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(43).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(44).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(44).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(45).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(45).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(46).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(46).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(47).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(47).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(48).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(48).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(49).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(49).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(50).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(50).mp4"),
        Wallpaper(
            img: "assets/scifi/thumbnails/scifi(51).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/scifi/scifi(51).mp4"),
      ],
    ),
    Category(
      name: "Tv-Movies",
      image: "assets/categories/tvmovie.jpg",
      wallpapers: [
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(28).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(28).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(29).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(29).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(30).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(30).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(31).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(31).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(32).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(32).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(33).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(33).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(34).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(34).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(35).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(35).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(36).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(36).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(37).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(37).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(38).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(38).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(39).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(39).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(40).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(40).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(41).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(41).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(42).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(42).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(43).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(43).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(44).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(44).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(45).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(45).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(46).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(46).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(47).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(47).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(48).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(48).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(49).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(49).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(50).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(50).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(51).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(51).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(52).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(52).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(53).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(53).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(54).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(54).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(55).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(55).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(56).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(56).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(57).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(57).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(58).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(58).mp4"),
        Wallpaper(
            img: "assets/tvmovie/thumbnails/tvmovie(59).jpg",
            video:
                "https://github.com/achrefbs/LiveWallpapers/raw/main/assets/tvmovie/tvmovie(59).mp4"),
      ],
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
