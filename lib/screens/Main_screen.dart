// ignore: file_names
import 'package:flutter/material.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:live_wallpaper/components/scroll_menu.dart';
import 'package:live_wallpaper/screens/home_page.dart';
import 'package:live_wallpaper/screens/wallpapers_page.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Helper helper = Provider.of<Helper>(context);
    return Scaffold(
      backgroundColor: kMainColor,
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
                controller: helper.pageController,
                onPageChanged: (value) {
                  helper.index = value;
                },
                itemCount: helper.getCategoryLength(),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const HomePage();
                  } else {
                    return WallpapersPage(
                      category: helper.getCategory(index),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: const NavBar(),
    );
  }
}
