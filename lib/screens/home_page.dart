import 'package:flutter/material.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:live_wallpaper/components/nav_bar.dart';
import 'package:live_wallpaper/components/scroll_menu.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var pages = [const CategoriesPage()];

  @override
  Widget build(BuildContext context) {
    Helper helper = Provider.of<Helper>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: const Text("Live Wallpaper"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const ScrollMenu(),
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  helper.index = value;
                },
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMainColor,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        itemCount: categories.length,
        itemBuilder: ((context, index) {
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
              categories[index].name,
              style: const TextStyle(color: Colors.white),
            )),
          );
        }),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Center(
        child: Text(
          "Category",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
