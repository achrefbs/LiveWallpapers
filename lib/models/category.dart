import 'package:live_wallpaper/models/wallpaper.dart';

class Category {
  final String name;
  final String image;
  final List<Wallpaper> wallpapers;

  const Category({
    required this.name,
    required this.image,
    required this.wallpapers,
  });
}
