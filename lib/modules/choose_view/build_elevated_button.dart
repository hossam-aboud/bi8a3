import 'package:baqa3/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class BuildElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const BuildElevatedButton({
    Key? key,
    required this.onPressed,required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 22.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.all<Color>(
              whiteColor,
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                vertical: 20.0,
              ),
            ),
          ),
    );
  }
}
