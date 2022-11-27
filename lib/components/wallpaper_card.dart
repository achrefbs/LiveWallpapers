import 'package:flutter/material.dart';

class WallpaperCard extends StatelessWidget {
  const WallpaperCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0), color: Colors.red
          // image: DecorationImage(
          //   image: NetworkImage("wallpapers[index]"),
          //   fit: BoxFit.cover,
          // ),
          ),
      child: const Center(
          child: Text(
        "wallpaper card",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
