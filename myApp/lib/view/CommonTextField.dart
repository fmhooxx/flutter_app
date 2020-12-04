import 'package:flutter/material.dart';
import 'package:myApp/style/style.dart';

class CommonTextField extends StatelessWidget {
  final controller;
  final keyboardType;
  final maxLines;
  final autofocus;
  final maxLength;
  final maxLengthEnforced;
  final fillColor;
  final filled;
  final hintText;
  final isDense;
  final prefixIcon;
  final radiusFillet;
  final suffixIcon;
  const CommonTextField({
    Key key,
    // 输入框绑定的值
    this.controller,
    // 控制键盘的输入类型
    this.keyboardType,
    // 输入框的最大行数
    this.maxLines,
    // 是否自动获取焦点
    this.autofocus,
    // 输入框最大长度
    this.maxLength,
    this.maxLengthEnforced,
    // 输入框背景颜色
    this.fillColor,
    this.filled,
    // 输入框提示文字
    this.hintText,
    this.isDense,
    // 输入框左边图标
    this.prefixIcon,
    // 输入框右边图标
    this.suffixIcon,
    // 输入框圆角
    this.radiusFillet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      // 用于设置该输入框默认的键盘输入类型
      keyboardType: keyboardType ?? TextInputType.text,
      // 输入框的最大行数，默认为1；如果为null，则无行数限制。
      maxLines: maxLines ?? 1,
      // 是否自动获取焦点。
      autofocus: autofocus ?? false,
      // 代表输入框文本的最大长度，设置后输入框右下角会显示输入的文本计数
      maxLength: maxLength ?? null,
      // 决定当输入文本长度超过maxLength时是否阻止输入，为true时会阻止输入，为false时不会阻止输入但输入框会变红
      maxLengthEnforced: maxLengthEnforced ?? true,
      decoration: InputDecoration(
        prefixIcon: prefixIcon ?? null,
        suffixIcon: suffixIcon ?? null,
        // 输入框背景颜色
        fillColor: fillColor ?? ColorPlate.cccccc,
        // 为true时，输入框将会被fillColor填充
        filled: filled ?? true,
        hintText: hintText ?? '请输入手机号码',
        // 设置为true则输入框的文本垂直方向空隙更小。
        isDense: isDense ?? true,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPlate.FF0000,
          ),
        ),
        // 未获得焦点的样式
        enabledBorder: OutlineInputBorder(
          // 边框的颜色
          borderSide: BorderSide(
            color: ColorPlate.FF0000,
          ),
          // 获得焦点的样式
          borderRadius: BorderRadius.all(
            Radius.circular(radiusFillet ?? 100),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPlate.transparent1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(radiusFillet ?? 100),
          ),
        ),
      ),
    );
  }
}
