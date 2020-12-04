// 本地图片控件
import 'package:flutter/material.dart';

class BaseAssetImage extends StatelessWidget {
  // 图片路劲 必传
  final url;
  // 图片的宽度
  final width;
  // 图片的高度
  final height;
  // 图片模式 默认值 全图显示(充满父容器)
  final fit;
  // 要混合的颜色 用于将颜色和图片进行颜色混合 默认值 null
  final color;
  // 表示混合模式 color 和 colorBlendMode 要同时使用 默认值 null
  final colorBlendMode;
  // 是否重复显示图片 默认值 ImageRepeat.noRepeat (不重复)
  final repeat;
  // 图片的绘制方向 默认值 false 说明: 设置为true时，图片的绘制方向为TextDirection设置的方向，其父组件必须为Directionality
  final matchTextDirection;
  // 图片的圆角 默认值 20.0
  final borderRadius;
  const BaseAssetImage({
    Key key,
    @required this.url,
    this.width,
    this.height,
    this.fit,
    this.color,
    this.colorBlendMode,
    this.repeat,
    this.matchTextDirection,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 20.0),
      child: Image.asset(
        url,
        width: width,
        height: height,
        fit: fit ?? BoxFit.fill,
        color: color ?? null,
        colorBlendMode: colorBlendMode ?? null,
        repeat: repeat ?? ImageRepeat.noRepeat,
        matchTextDirection: matchTextDirection ?? false,
      ),
    );
  }
}
