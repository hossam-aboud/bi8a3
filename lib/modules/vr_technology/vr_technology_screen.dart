import 'package:baqa3/modules/vr_technology/components/build_touch_bar.dart';
import 'package:baqa3/modules/vr_technology/components/build_video_player.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VrTechnologyScreen extends StatefulWidget {
  final String videoPlayer;

  const VrTechnologyScreen({
    Key? key,
    required this.videoPlayer,
  }) : super(key: key);

  @override
  State<VrTechnologyScreen> createState() => _VrTechnologyScreenState();
}

class _VrTechnologyScreenState extends State<VrTechnologyScreen> {
  late VideoPlayerController _controller;
  bool _hidePlayBar = false;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    super.initState();
    _controller = VideoPlayerController.network(
      widget.videoPlayer,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    )..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          BuildVideoPlayer(
            controller: _controller,
            onTap: () => setState(
                  () {
              _hidePlayBar = !_hidePlayBar;
              },
            ),
          ),
          BuildTouchBarVideo(
            controller: _controller,
            hidePlayBar: _hidePlayBar,
          ),
          BuildDefaultArrowBack(
            isVrMode: true,
          ),
        ],
      ),
    );
  }
}
