import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppFonts {
  static const TextStyle boldS18 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'Satoshi-Variable');

  static const TextStyle searchStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Satoshi-Variable',
      color: AppColors.searchColor);

  static const TextStyle s15ExtraBold = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w800,
      fontFamily: 'Satoshi-Variable',
      color: AppColors.cardTextColor);

  static const TextStyle s22ExtraBold = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      fontFamily: 'Satoshi-Variable',
      color: AppColors.cardTextColor);

  static const TextStyle s13ExtraBold = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      fontFamily: 'Satoshi-Variable',
      color: AppColors.cardTextColor);

  static const TextStyle titletext = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: 'Satoshi-Variable',
      color: AppColors.titleColor);

  static const TextStyle seeMore = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Satoshi-Variable',
      color: AppColors.buttonColor);

  static const TextStyle cardCarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Satoshi-Variable',
    color: Color(0xff000000),
  );

  static const TextStyle cardCarPrice = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Satoshi-Variable',
    color: Color(0xff1463FF),
  );

  static const TextStyle cardCarSvgText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: 'Satoshi-Variable',
    color: Color(0xff000000),
  );

  static const TextStyle carDetailTitle = TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.w500,
      fontFamily: 'Satoshi-Variable',
      color: Color(0xff000000),
      height: 1.111);

  static const TextStyle carDetailSubTitle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      fontFamily: 'Satoshi-Variable',
      color: Color(0xff000000),
      height: 1.111);

  static const TextStyle forChipText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat-VariableFont_wght',
    color: Colors.white,
  );

  static const TextStyle carTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat-VariableFont_wght',
    color: Colors.black,
  );

  static const TextStyle carSubTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat-VariableFont_wght',
    color: Color(0xff919191),
  );

  static const TextStyle carDetail = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat-VariableFont_wght',
    color: Colors.black,
  );
}
