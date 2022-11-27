import 'package:flutter/material.dart';
import 'package:live_wallpaper/models/category.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:provider/provider.dart';

class ScrollMenu extends StatelessWidget {
  const ScrollMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Helper helper = Provider.of<Helper>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          helper.getCategoryLength(),
          (index) =>
              ScrollMenuItem(category: helper.getCategory(index), index: index),
        ),
      ),
    );
  }
}

class ScrollMenuItem extends StatefulWidget {
  const ScrollMenuItem({Key? key, required this.category, required this.index})
      : super(key: key);
  final Category category;
  final int index;
  @override
  State<ScrollMenuItem> createState() => _ScrollMenuItemState();
}

class _ScrollMenuItemState extends State<ScrollMenuItem> {
  final double scrollMenuHeight = 50.0;
  final double scrollMenuWidth = 100.0;

  @override
  Widget build(BuildContext context) {
    Helper helper = Provider.of<Helper>(context);
    return GestureDetector(
      onTap: () {
        helper.index = widget.index;
        helper.goToPage(widget.index);
      },
      child: Container(
        height: scrollMenuHeight,
        width: scrollMenuWidth,
        decoration: BoxDecoration(
            color: kMainColor,
            border: helper.index == widget.index
                ? const Border(
                    bottom: BorderSide(color: Colors.white, width: 3.0))
                : null),
        child: Center(
            child: Text(
          widget.category.name,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
