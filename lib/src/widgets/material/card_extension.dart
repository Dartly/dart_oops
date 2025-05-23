import 'package:flutter/material.dart';

/// Card组件的扩展
/// 
/// 为Card组件提供链式调用API
extension CardExtension on Card {
  /// 设置卡片颜色
  Card $color(Color color) => copyWith(color: color);
  
  /// 设置卡片阴影颜色
  Card $shadowColor(Color color) => copyWith(shadowColor: color);
  
  /// 设置卡片高度
  Card $elevation(double elevation) => copyWith(elevation: elevation);
  
  /// 设置卡片形状
  Card $shape(ShapeBorder shape) => copyWith(shape: shape);
  
  /// 设置卡片圆角
  Card $borderRadius(BorderRadius borderRadius) => copyWith(
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
  );
  
  /// 设置卡片外边距
  Card $margin(EdgeInsetsGeometry margin) => copyWith(margin: margin);
  
  /// 设置卡片子组件
  Card $child(Widget child) => copyWith(child: child);
  
  /// 复制当前Card并应用新的属性
  Card copyWith({
    Key? key,
    Color? color,
    Color? shadowColor,
    double? elevation,
    ShapeBorder? shape,
    bool? borderOnForeground,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    Widget? child,
    bool? semanticContainer,
  }) {
    return Card(
      key: key ?? this.key,
      color: color ?? this.color,
      shadowColor: shadowColor ?? this.shadowColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      borderOnForeground: borderOnForeground ?? this.borderOnForeground,
      margin: margin ?? this.margin,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child,
      semanticContainer: semanticContainer ?? this.semanticContainer,
    );
  }
}
