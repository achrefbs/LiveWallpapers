import 'package:flutter/material.dart';
import 'package:live_wallpaper/components/category_card.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Helper helper = Provider.of<Helper>(context);
    return Container(
      color: kMainColor,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        itemCount: helper.getCategoryLength() - 1,
        itemBuilder: ((context, index) {
          return CategoryCard(helper: helper, index: index);
        }),
      ),
    );
  }
}
