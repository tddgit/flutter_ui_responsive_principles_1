import 'package:flutter/material.dart';
import 'package:flutter_ui_responsive_principles_1/enums/device_screen.dart';

class SizingInformation {
  SizingInformation({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  final DeviceScreenType? deviceScreenType;
  final Size? localWidgetSize;
  final Orientation? orientation;
  final Size? screenSize;

  @override
  String toString() {
    return 'SizingInformation(orientation: $orientation, deviceScreenType: $deviceScreenType, screenSize: $screenSize, localWidgetSize: $localWidgetSize)';
  }
}
