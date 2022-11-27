import 'package:flutter/material.dart';
import 'package:live_wallpaper/providers/helper.dart';
import 'package:live_wallpaper/components/nav_bar.dart';
import 'package:live_wallpaper/components/scroll_menu.dart';
import 'package:live_wallpaper/screens/home_page.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

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
                controller: helper.pageController,
                // onPageChanged: (value) {
                //   helper.index = value;
                // },
                itemCount: helper.getCategoryLength(),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return HomePage();
                  } else {
                    print("object");
                    return Container();
                  }
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
