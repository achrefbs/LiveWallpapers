import 'package:flutter/material.dart';
import 'package:live_wallpaper/helper.dart';
import 'package:live_wallpaper/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Helper(),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
