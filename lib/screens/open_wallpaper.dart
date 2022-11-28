import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:live_wallpaper/vars.dart';

class OpenWallpaper extends StatefulWidget {
  const OpenWallpaper({super.key, required this.url});
  final String url;

  @override
  State<OpenWallpaper> createState() => _OpenWallpaperState();
}

class _OpenWallpaperState extends State<OpenWallpaper> {
  late CachedVideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CachedVideoPlayerController.asset(
      widget.url,
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void didChangeDependencies() {
    _controller.play();
    _controller.setLooping(true);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? CachedVideoPlayer(
                _controller,
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 0.8,
                  color: Colors.white,
                ),
              ),
        Positioned(
          bottom: 20,
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
            onPressed: () {},
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
