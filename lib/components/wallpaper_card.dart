import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WallpaperCard extends StatefulWidget {
  WallpaperCard({
    required this.url,
    Key? key,
  }) : super(key: key);
  String url;
  @override
  State<WallpaperCard> createState() => _WallpaperCardState();
}

class _WallpaperCardState extends State<WallpaperCard> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.url,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
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
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: _controller.value.isInitialized
            ? VideoPlayer(_controller)
            : CircularProgressIndicator(
                strokeWidth: 0.8,
                color: Colors.white,
              ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
