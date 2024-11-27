import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        fontSize: getResponsivefontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        height: 0,
        fontFamily: 'Montserrat',
        color: const Color(0xFF064060));
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064060),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064060),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064060),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 16),
      fontWeight: FontWeight.bold,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsivefontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      height: 0,
      fontFamily: 'Montserrat',
      color: const Color(0xFFFFFFFF),
    );
  }
}

double getResponsivefontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // double physicalWidth = dispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 900;
  } else {
    return width / 1854;
  }
}
