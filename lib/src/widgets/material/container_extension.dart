import 'package:flutter/material.dart';

/// Container组件的扩展
/// 
/// 为Container组件提供链式调用API
extension ContainerExtension on Container {
  /// 设置背景色
  Container $bgColor(Color color) => copyWith(color: color);

  /// 设置圆角
  Container $radius(double radius) => copyWith(
    decoration:
        (decoration as BoxDecoration?)?.copyWith(
          borderRadius: BorderRadius.circular(radius),
        ) ??
        BoxDecoration(borderRadius: BorderRadius.circular(radius)),
  );

  ///样式
  Container $decoration(Decoration decoration) =>
      copyWith(decoration: decoration);

  ///增加一个child
  Container $child(Widget child) => copyWith(child: child);

  ///设置内边距
  Container $padding(EdgeInsetsGeometry? p) => copyWith(padding: p);

  /// 设置底部内边距
  Container $pb(double p) => copyWith(padding: EdgeInsets.only(bottom: p));

  /// 设置顶部内边距
  Container $pt(double p) => copyWith(padding: EdgeInsets.only(top: p));

  /// 设置左边内边距
  Container $pl(double p) => copyWith(padding: EdgeInsets.only(left: p));

  /// 设置右边内边距
  Container $pr(double p) => copyWith(padding: EdgeInsets.only(right: p));

  /// 设置内边距
  Container $paddingAll(double value) =>
      copyWith(padding: EdgeInsets.all(value));

  ///设置外边距
  Container $margin(EdgeInsetsGeometry? m) => copyWith(margin: m);

  /// 设置底部外边距
  Container $mb(double m) => copyWith(margin: EdgeInsets.only(bottom: m));

  /// 设置顶部外边距
  Container $mt(double m) => copyWith(margin: EdgeInsets.only(top: m));

  /// 设置左边外边距
  Container $ml(double m) => copyWith(margin: EdgeInsets.only(left: m));

  /// 设置右边外边距
  Container $mr(double m) => copyWith(margin: EdgeInsets.only(right: m));

  /// 设置外边距
  Container $marginAll(double value) => copyWith(margin: EdgeInsets.all(value));

  /// 设置宽度
  Container $w(double width) => copyWith(width: width);

  /// 设置高度
  Container $h(double height) => copyWith(height: height);

  /// 设置对齐方式
  Container $align(Alignment alignment) => copyWith(alignment: alignment);

  /// 设置阴影
  Container $shadow({
    Color color = Colors.black26,
    double blur = 8,
    Offset offset = const Offset(0, 2),
  }) => copyWith(
    decoration:
        (decoration as BoxDecoration?)?.copyWith(
          boxShadow: [
            BoxShadow(color: color, blurRadius: blur, offset: offset),
          ],
        ) ??
        BoxDecoration(
          boxShadow: [
            BoxShadow(color: color, blurRadius: blur, offset: offset),
          ],
        ),
  );

  /// 复制当前 Container 并应用新的属性
  Container copyWith({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip? clipBehavior,
  }) {
    // 获取原有宽高
    double? oldWidth =
        constraints?.maxWidth != double.infinity ? constraints?.maxWidth : null;
    double? oldHeight =
        constraints?.maxHeight != double.infinity
            ? constraints?.maxHeight
            : null;
    BoxConstraints? mergedConstraints = constraints ?? this.constraints;
    if (width != null || height != null) {
      mergedConstraints = (mergedConstraints ?? const BoxConstraints())
          .copyWith(
            maxWidth: width ?? oldWidth,
            maxHeight: height ?? oldHeight,
            minWidth: width ?? oldWidth,
            minHeight: height ?? oldHeight,
          );
    }
    return Container(
      key: key ?? this.key,
      alignment: alignment ?? this.alignment,
      padding: padding ?? this.padding,
      color: color ?? this.color,
      decoration: decoration ?? this.decoration,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      constraints: mergedConstraints,
      margin: margin ?? this.margin,
      transform: transform ?? this.transform,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child,
    );
  }
}
