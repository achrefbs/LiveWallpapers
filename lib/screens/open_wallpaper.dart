import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_wallpaper/vars.dart';
import 'package:video_player/video_player.dart';
import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class OpenWallpaper extends StatefulWidget {
  const OpenWallpaper({super.key, required this.url});
  final String url;

  @override
  State<OpenWallpaper> createState() => _OpenWallpaperState();
}

class _OpenWallpaperState extends State<OpenWallpaper> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
      widget.url,
    );
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  //set the video as wallpaper
  void setWallpaper() async {
    // ignore: unused_local_variable
    String result;
    await DefaultCacheManager()
        .getSingleFile(
      widget.url,
    )
        .then((value) async {
      try {
        result = await AsyncWallpaper.setLiveWallpaper(
          filePath: value.path,
          goToHome: true,
        )
            ? 'Wallpaper set'
            : 'Failed to get wallpaper.';
      } on PlatformException {
        result = 'Failed to get wallpaper.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              _controller.play();
              _controller.setLooping(true);
              return VideoPlayer(_controller);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        Positioned(
          bottom: 10,
          child: ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width, 80),
              ),
              backgroundColor:
                  MaterialStateProperty.all(kMainColor.withOpacity(0.7)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            onPressed: () {
              setWallpaper();
            },
            child: const Text(
              'Set Wallpaper',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
