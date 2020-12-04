import 'package:flutter/material.dart';
import 'package:myApp/style/style.dart';

class GradientsButton extends StatelessWidget {
  final color;
  final shape;
  final width;
  final height;
  final text;
  final letterSpacing;
  final fontSize;
  final fontColor;
  final fontWeight;
  const GradientsButton({
    Key key,
    this.color,
    this.width,
    this.height,
    this.text,
    this.shape,
    this.letterSpacing,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 50.0,
        child: RaisedButton(
          //用RaisedButton按钮的时候需要设置下面三个属性
          color: color ?? ColorPlate.transparent1,
          elevation: 0, // 按钮阴影 正常时阴影隐藏
          highlightElevation: 0,
          // 按钮的圆角以及边框的颜色
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(shape ?? 28.0),
          ),
          child: Text(
            text ?? '登录',
            style: TextStyle(
              letterSpacing: letterSpacing ?? 0,
              fontSize: fontSize ?? SysSize.size14,
              color: fontColor ?? ColorPlate.white,
              // fontWeight: fontWeight ?? ,
              fontWeight: fontWeight ?? FontWeight.w400,
            ),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }
}
