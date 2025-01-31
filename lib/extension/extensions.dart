import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget addSpaceBelow(double spaceValue) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: spaceValue,
      ),
      child: this,
    );
  }
}
