import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:live_wallpaper/screens/open_wallpaper.dart';

class WallpaperCard extends StatefulWidget {
  const WallpaperCard({
    required this.url,
    Key? key,
  }) : super(key: key);
  final String url;
  @override
  State<WallpaperCard> createState() => _WallpaperCardState();
}

class _WallpaperCardState extends State<WallpaperCard> {
  late CachedVideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CachedVideoPlayerController.asset(
      widget.url,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OpenWallpaper(
              url: widget.url,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: _controller.value.isInitialized
              ? CachedVideoPlayer(
                  _controller,
                )
              : const CircularProgressIndicator(
                  strokeWidth: 0.8,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
