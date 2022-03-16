import 'package:audioplayers/audioplayers.dart';
import 'package:baqa3/shared/components/constants.dart';
import 'package:baqa3/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late final AudioCache audioCache;

intiSoundButton() {
  audioCache = AudioCache(
    prefix: 'assets/sound/',
    fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
  );
}
playSound () async {
return await  audioCache.play('click_btn.mp3');

}
configurationApplication() {
  intiSoundButton();
  // control to the status bar without using appbar
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: transparentColor,
  ));
}

navigateTo(
        {required context, required screen, Function(dynamic value)? then}) =>
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return screen;
        },
      ),
    );

popScreen({required context}) {
  if (Navigator.of(context).canPop()) {
    Navigator.of(context).pop();
  }
}

removeAllBackScreen({required context, required screen}) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => screen,
      ),
      (route) => false,
    );

class BuildDefaultTitleScreens extends StatelessWidget {
  final String titleScreen;
  final bool isCustomization;

  const BuildDefaultTitleScreens(
      {Key? key, required this.titleScreen, this.isCustomization = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleScreen,
      maxLines: 1,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}

class BuildDefaultElevatedButton extends StatelessWidget {
  final String textBtn;
  final bool isCustomization;
  final void Function() onPressed;

  const BuildDefaultElevatedButton({
    Key? key,
    required this.textBtn,
    required this.onPressed,
    this.isCustomization = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        textBtn,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: primaryColor,
          fontSize: 20.0,
        ),
      ),
      style: Theme.of(context).elevatedButtonTheme.style,
    );
  }
}

class DefaultBuildScaffoldBackgroundImage extends StatelessWidget {
  const DefaultBuildScaffoldBackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * -0.5,
      bottom: height * -0.1,
      left: (-width),
      right: (-width),
      child: Image.asset(
        backgroundScaffold,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}

class BuildDefaultArrowBack extends StatelessWidget {
  final bool isVrMode;

  const BuildDefaultArrowBack({Key? key, this.isVrMode = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      left: 15.0,
      top: !isVrMode ? height * 0.08 : height * 0.11,
      child: InkWell(
        onTap: () => popScreen(context: context),
        child: Icon(
          Icons.arrow_back,
          color: whiteColor,
        ),
      ),
    );
  }
}
