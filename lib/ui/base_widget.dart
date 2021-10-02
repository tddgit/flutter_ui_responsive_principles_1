import 'package:flutter/material.dart';
import 'package:flutter_ui_responsive_principles_1/enums/device_screen.dart';

import 'package:flutter_ui_responsive_principles_1/ui/sizing_information.dart';
import 'package:flutter_ui_responsive_principles_1/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(
    BuildContext context,
    SizingInformation sizingInformation,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, boxConstraints) {
        final SizingInformation sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          localWidgetSize:
              Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
        );

        return builder(
          context,
          sizingInformation,
        );
      },
    );
  }
}
