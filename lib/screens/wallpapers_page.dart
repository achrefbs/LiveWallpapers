import 'package:flutter/material.dart';
import 'package:live_wallpaper/components/wallpaper_card.dart';
import 'package:live_wallpaper/models/category.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:provider/provider.dart';

class WallpapersPage extends StatelessWidget {
  const WallpapersPage({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    Helper helper = Provider.of<Helper>(context);
    return Container(
      color: kMainColor,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 9 / 16,
        ),
        itemCount: category.wallpapers.length,
        itemBuilder: ((context, index) {
          return WallpaperCard(
            url: category.wallpapers[index],
          );
        }),
      ),
    );
  }
}
