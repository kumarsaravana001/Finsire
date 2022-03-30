import 'package:flutter/material.dart';

class AppImages {
  static Widget marvell({double? width, double? height}) {
    return Image.asset(
      "assets/images/marvel.png",
      fit: BoxFit.fill,
      width: width,
      height: height,
    );
  }

  static Widget tony({double? width, double? height}) {
    return Image.asset(
      "assets/images/tony.png",
      fit: BoxFit.fill,
      width: width,
      height: height,
    );
  }

  static Widget marvel({double? height, double? width}) {
    return Image.asset("assets/images/marvel.png",
        width: width, height: height);
  }

  static Widget bean({double? height, double? width}) {
    return Image.asset("assets/images/bean.png", width: width, height: height);
  }

  static Widget cub({double? height, double? width}) {
    return Image.asset("assets/images/cub.png", width: width, height: height);
  }

  static Widget mikie({double? height, double? width}) {
    return Image.asset("assets/images/mikie.png", width: width, height: height);
  }

  static Widget minion({double? height, double? width}) {
    return Image.asset("assets/images/minion.png",
        width: width, height: height);
  }

  static Widget sponch({double? height, double? width}) {
    return Image.asset("assets/images/sponch.png",
        width: width, height: height);
  }

  static Widget yeo({double? height, double? width}) {
    return Image.asset("assets/images/yeo.png", width: width, height: height);
  }
}
