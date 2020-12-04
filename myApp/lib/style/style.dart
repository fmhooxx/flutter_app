import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SysSize {
  static const double avatar = 56;
  // static const double iconBig = 40;
  static const double iconNormal = 24;
  // static const double big = 18;
  // static const double normal = 16;
  // static const double small = 12;
  static const double iconBig = 40;
  static const double big = 16;
  static const double normal = 14;
  static const double small = 12;
  static const double size12 = 12;
  static const double size14 = 14;
  static const double size16 = 16;
  static const double size18 = 18;
  static const double size20 = 20;
  static const double size22 = 22;
  static const double size24 = 24;
  static const double size26 = 26;
  static const double size28 = 28;
  static const double size30 = 30;
  static const double size32 = 32;
  static const double size34 = 34;
}

class StandardTextStyle {
  static const TextStyle big = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: SysSize.big,
    inherit: true,
  );
  static const TextStyle bigWithOpacity = const TextStyle(
    color: const Color.fromRGBO(0xff, 0xff, 0xff, .66),
    fontWeight: FontWeight.w600,
    fontSize: SysSize.big,
    inherit: true,
  );
  static const TextStyle normalW = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: SysSize.normal,
    inherit: true,
  );
  static const TextStyle normal = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: SysSize.normal,
    inherit: true,
  );
  static const TextStyle normalWithOpacity = const TextStyle(
    color: const Color.fromRGBO(0xff, 0xff, 0xff, .66),
    fontWeight: FontWeight.normal,
    fontSize: SysSize.normal,
    inherit: true,
  );
  static const TextStyle small = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: SysSize.small,
    inherit: true,
  );
  static const TextStyle smallWithOpacity = const TextStyle(
    color: const Color.fromRGBO(0xff, 0xff, 0xff, .66),
    fontWeight: FontWeight.normal,
    fontSize: SysSize.small,
    inherit: true,
  );
  static const TextStyle title28 = const TextStyle(
    color: ColorPlate.white,
    fontWeight: FontWeight.w500,
    fontSize: SysSize.size28,
    inherit: true,
  );
  static const TextStyle title18 = const TextStyle(
    letterSpacing: 6,
    color: Colors.white,
    fontSize: SysSize.size18,
    fontWeight: FontWeight.w500,
    inherit: true,
  );
}

class ColorPlate {
  // 配色
  static const Color orange = const Color(0xffFFC459);
  static const Color yellow = const Color(0xffF1E300);
  static const Color green = const Color(0xff7ED321);
  static const Color red = const Color(0xffEB3838);
  static const Color darkGray = const Color(0xff4A4A4A);
  static const Color gray = const Color(0xff9b9b9b);
  static const Color lightGray = const Color(0xfff5f5f4);
  static const Color black = const Color(0xff000000);
  static const Color white = const Color(0xffffffff);
  static const Color clear = const Color(0);

  /// 深色背景
  static const Color back1 = const Color(0xff1D1F22);

  /// 比深色背景略深一点
  static const Color back2 = const Color(0xff121314);

  static const Color F78461 = const Color(0xffF78461);
  static const Color grey = const Color(0xff9e9e9e);
  static const Color F54964 = const Color(0xffF54964);
  static const Color F979797 = const Color(0xff979797);
  static const Color Fd6185 = const Color(0xffed6185);
  static const Color F444444 = const Color(0xfff4f4f4);
  static const Color cccccc = const Color(0x30cccccc);
  static const Color FF0000 = const Color(0x00FF0000);
  static const Color x00000 = const Color(0x00000000);
  static const Color transparent1 = const Color(0);
  static const Color Aff = const Color(0x1AFFFFFF);
  static const Color Ff54964 = const Color(0xFFF54964);
  static const Color Ff78461 = const Color(0xFFF78461);
  static const Color F1f2132 = const Color(0xFF1F2132);
}

// 渐变
class ColorGradient {
  static const Gradient = const LinearGradient(
    colors: [
      ColorPlate.F54964,
      ColorPlate.F78461,
    ],
  );
}

// 圆角
class RadiusAngle {
  static const BoxDecoration28 = const BorderRadius.all(
    Radius.circular(28.0),
  );
  static const BoxDecoration10 = const BorderRadius.all(
    Radius.circular(10.0),
  );
  static const BoxDecoration8 = const BorderRadius.all(
    Radius.circular(8.0),
  );
}
