import 'package:flutter/material.dart';

final class Images {
  static Image card({required String image, double? height, Color? color}) {
    return Image(
      image: AssetImage("assets/images/card/$image.png"),
      height: height,
      color: color,
    );
  }

  static Image category({required String image, double? height, Color? color}) {
    return Image(
      image: AssetImage("assets/images/category/$image.png"),
      height: height,
      color: color,
    );
  }

  static Image currency({required String image, double? height, Color? color}) {
    return Image(
      image: AssetImage("assets/images/currency/$image.png"),
      height: height,
      color: color,
    );
  }
}
