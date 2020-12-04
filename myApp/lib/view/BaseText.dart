import 'package:flutter/material.dart';
import 'package:myApp/style/style.dart';

class BaseText extends StatelessWidget {
  // 文字内容(必传)
  final textVal;
  // 文字的颜色 默认值 (ColorPlate.F979797)
  final fontColor;
  // 文字加粗 默认值 (FontWeight.w500)
  final fontWeight;
  // 文字大小 默认值 (SysSize.size14)
  final fontSize;
  // 文本的对齐方式 默认值 (TextAlign.start)
  final textAlign;
  // 是否自动换行 默认值 (false)
  final softWrap;
  // 当自动换行是 false 时生效 文字溢出的显示方式 默认值 (ellipsis) 省略号显示
  final overflow;
  // 文字缩放系数 默认值 (1) 列如: 1.5 是表示比原来的字大 50%
  final textScaleFactor;
  // 文字之间的间距
  final letterSpacing;
  const BaseText({
    Key key,
    @required this.textVal,
    this.fontColor,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textVal,
      textAlign: textAlign ?? TextAlign.start,
      softWrap: softWrap ?? false,
      overflow: overflow ?? TextOverflow.ellipsis,
      textScaleFactor: textScaleFactor ?? 1,
      style: TextStyle(
        letterSpacing: letterSpacing ?? null,
        color: fontColor ?? ColorPlate.F979797,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? SysSize.size14,
      ),
    );
  }
}
