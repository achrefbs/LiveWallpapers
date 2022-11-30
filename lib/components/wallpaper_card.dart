import 'package:flutter/material.dart';
import 'package:live_wallpaper/models/wallpaper.dart';
import 'package:live_wallpaper/screens/open_wallpaper.dart';

class WallpaperCard extends StatefulWidget {
  const WallpaperCard({
    required this.wallpaper,
    Key? key,
  }) : super(key: key);
  final Wallpaper wallpaper;
  @override
  State<WallpaperCard> createState() => _WallpaperCardState();
}

class _WallpaperCardState extends State<WallpaperCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OpenWallpaper(
              url: widget.wallpaper.video,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              widget.wallpaper.img,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
