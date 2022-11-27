import 'package:flutter/material.dart';
import 'package:live_wallpaper/providers/helper.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.helper,
    required this.index,
  }) : super(key: key);

  final Helper helper;
  final int index;

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
      child: Center(
          child: Text(
        helper.getCategory(index + 1).name,
        style: const TextStyle(color: Colors.white),
      )),
    );
  }
}
