import 'package:flutter/material.dart';
import 'package:flutter_ui_responsive_principles_1/enums/device_screen.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  final orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  deviceWidth = orientation == Orientation.landscape
      ? mediaQuery.size.height
      : mediaQuery.size.width;

  if (deviceWidth > 950) {
    return DeviceScreenType.desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.tablet;
  }

  return DeviceScreenType.desktop;
}
