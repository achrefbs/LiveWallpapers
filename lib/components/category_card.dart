import 'package:flutter/material.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:provider/provider.dart';

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
    Helper helper = Provider.of<Helper>(context);
    return GestureDetector(
      onTap: () {
        helper.index = index + 1;
        helper.goToPage(index + 1);
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(
              helper.getCategory(index + 1).image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Text(
          helper.getCategory(index + 1).name,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
