import 'dart:typed_data';

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
  late Future<Uint8List?> uint8listImg;

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
        ),
        child: Center(
          child: Image.asset(widget.wallpaper.img),
        ),
      ),
    );
  }
}
