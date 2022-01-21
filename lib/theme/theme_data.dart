import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

ThemeData themeData = ThemeData(
  primaryColor: PRIMARY,
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 28,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w700,
      color: BLACK,
    ),
    headline2: TextStyle(
      fontSize: 24,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w600,
      color: BLACK,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w600,
      color: BLACK,
    ),
    bodyText1: TextStyle(
      fontSize: 18,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w500,
      color: BLACK,
      // letterSpacing: -0.2,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w500,
      color: BLACK,
      // letterSpacing: -0.2,
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w600,
      color: DEEP_GRAY,
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w600,
      color: DEEP_GRAY,
    ),
    // 아이콘 설명 텍스트
    caption: TextStyle(
      fontSize: 11,
      fontFamily: 'Noto Sans KR',
      fontWeight: FontWeight.w600,
      color: BLACK,
    ),
  ),
);
