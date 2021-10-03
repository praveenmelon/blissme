import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blissme/common/extensions/size_extensions.dart';
import 'package:blissme/common/constants/size_constants.dart';
import 'package:blissme/presentation/themes/app_color.dart';

class Button extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;

  const Button({Key? key, required this.text, required this.onPressed, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [
                color,
                color,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_20.w))),
        padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_16.w),
        margin: EdgeInsets.symmetric(vertical: Sizes.dimen_12.w),
        height: Sizes.dimen_16.h,
        child: FlatButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
          ),
        ));
  }
}
