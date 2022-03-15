import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BuildVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;
  final void Function () onTap;

  BuildVideoPlayer({
    Key? key,
    required this.controller,
    required this.onTap  ,
  }) : super(key: key);

  @override
  State<BuildVideoPlayer> createState() => _BuildVideoPlayerState();
}

class _BuildVideoPlayerState extends State<BuildVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: widget.controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: widget.controller.value.aspectRatio,
              child: InkWell(
                onTap: widget.onTap ,
                child: VideoPlayer(
                  widget.controller,
                ),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
