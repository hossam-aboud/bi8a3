import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../shared/styles/colors.dart';

class BuildTouchBarVideo extends StatefulWidget {
  final VideoPlayerController controller;
  bool hidePlayBar;

   BuildTouchBarVideo({Key? key, required this.controller, required this.hidePlayBar})
      : super(key: key);

  @override
  State<BuildTouchBarVideo> createState() => _BuildTouchBarVideoState();
}

class _BuildTouchBarVideoState extends State<BuildTouchBarVideo> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: !widget.hidePlayBar ? 1.0 : 0.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15.0,
                    ),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: VideoProgressIndicator(
                      widget.controller,
                      allowScrubbing: true,
                      colors: const VideoProgressColors(
                        playedColor: Colors.grey,
                        bufferedColor: Colors.purple,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.controller.value.isPlaying
                            ? widget.controller.pause()
                            : widget.controller.play();
                      });
                    },
                    icon: Icon(
                      widget.controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: whiteColor,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
