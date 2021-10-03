import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blissme/common/constants/size_constants.dart';
import 'package:blissme/common/extensions/size_extensions.dart';
import 'package:blissme/presentation/themes/app_color.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _nunitoTextTheme => GoogleFonts.poppinsTextTheme();

  static TextStyle get newHeadline1 => _nunitoTextTheme.headline1!.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: AppColor.black);

  static TextStyle get newHeadline2 => _nunitoTextTheme.headline2!.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: AppColor.black);

  static TextStyle get newHeadline3 => _nunitoTextTheme.headline3!.copyWith(
      fontSize: 20, fontWeight: FontWeight.w400, color: AppColor.black);

  static TextStyle get newHeadline4 => _nunitoTextTheme.headline4!.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
      color: AppColor.black);

  static TextStyle get newHeadline5 => _nunitoTextTheme.headline5!.copyWith(
      fontSize: 25, fontWeight: FontWeight.w700, color: AppColor.black);

  static TextStyle get newHeadline6 => _nunitoTextTheme.headline6!.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      wordSpacing: 1,
      color: AppColor.black);

  static TextStyle get newSubtitle1 => _nunitoTextTheme.subtitle1!.copyWith(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.15,
      color: AppColor.black);

  static TextStyle get newSubtitle2 => _nunitoTextTheme.subtitle2!.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: AppColor.black);

  static TextStyle get newBodyText1 => _nunitoTextTheme.bodyText1!.copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: AppColor.black);

  static TextStyle get newBodyText2 => _nunitoTextTheme.bodyText2!.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
      color: AppColor.black);

  static TextStyle get newButton => _nunitoTextTheme.button!.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: AppColor.black);

  static TextStyle get newCaption => _nunitoTextTheme.caption!.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.4,
      color: AppColor.black);

  static TextStyle get newOverline => _nunitoTextTheme.overline!.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5,
      color: AppColor.black);

  static getTextTheme() => TextTheme(
    /* headline5: _whiteHeadline5,
    headline6: _blackHeadline6,
    subtitle1: whiteSubtitle1,
    bodyText2: whiteBodyText2,
    button: _whiteButton,*/
    headline1: newHeadline1,
    headline2: newHeadline2,
    headline3: newHeadline3,
    headline4: newHeadline4,
    headline5: newHeadline5,
    headline6: newHeadline6,
    subtitle1: newSubtitle1,
    subtitle2: newSubtitle2,
    bodyText1: newBodyText1,
    bodyText2: newBodyText2,
    button: newButton,
    caption: newCaption,
    overline: newOverline,
  );
}

extension ThemeTextExtension on TextTheme {

  TextStyle get royalBlueSubtitle1 => subtitle1!.copyWith(
    color: AppColor.grey,
    fontWeight: FontWeight.w600,
  );

  TextStyle get vulcanBlueSubtitle1 => subtitle1!.copyWith(
      fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.pink);

  TextStyle get detailAppbarTitle => headline6!.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      color: AppColor.black);
}
