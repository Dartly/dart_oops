import 'package:flutter/material.dart';

/// 第三方组件扩展支持
/// 
/// 提供一种机制，允许用户为任何第三方Widget扩展链式语法糖
class OopsExtender<T extends Widget> {
  /// 原始Widget
  final T widget;
  
  /// 构造函数
  const OopsExtender(this.widget);
  
  /// 应用转换函数
  R $apply<R extends Widget>(R Function(T widget) transformer) {
    return transformer(widget);
  }
  
  /// 获取原始Widget
  T get original => widget;
}

/// 为所有Widget添加.$extend()扩展方法
/// 
/// 这允许任何Widget通过.$extend()获得扩展能力
/// 例如: ThirdPartyWidget().$extend().$apply((w) => ...)
extension OopsExtenderExtension<T extends Widget> on T {
  /// 将Widget转换为OopsExtender
  OopsExtender<T> $extend() => OopsExtender<T>(this);
}

/// 通用Widget扩展
/// 
/// 为所有Widget提供通用的链式调用API
extension WidgetExtension on Widget {
  /// 添加内边距
  Widget $padding(EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
  
  /// 添加上内边距
  Widget $pt(double padding) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: this,
    );
  }
  
  /// 添加右内边距
  Widget $pr(double padding) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: this,
    );
  }
  
  /// 添加下内边距
  Widget $pb(double padding) {
    return Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: this,
    );
  }
  
  /// 添加左内边距
  Widget $pl(double padding) {
    return Padding(
      padding: EdgeInsets.only(left: padding),
      child: this,
    );
  }
  
  /// 添加水平内边距
  Widget $px(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }
  
  /// 添加垂直内边距
  Widget $py(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: this,
    );
  }
  
  /// 添加所有方向内边距
  Widget $paddingAll(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }
  
  /// 添加外边距
  Widget $margin(EdgeInsetsGeometry margin) {
    return Container(
      margin: margin,
      child: this,
    );
  }
  
  /// 添加上外边距
  Widget $mt(double margin) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      child: this,
    );
  }
  
  /// 添加右外边距
  Widget $mr(double margin) {
    return Container(
      margin: EdgeInsets.only(right: margin),
      child: this,
    );
  }
  
  /// 添加下外边距
  Widget $mb(double margin) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      child: this,
    );
  }
  
  /// 添加左外边距
  Widget $ml(double margin) {
    return Container(
      margin: EdgeInsets.only(left: margin),
      child: this,
    );
  }
  
  /// 添加水平外边距
  Widget $mx(double margin) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: this,
    );
  }
  
  /// 添加垂直外边距
  Widget $my(double margin) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      child: this,
    );
  }
  
  /// 添加所有方向外边距
  Widget $marginAll(double margin) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: this,
    );
  }
  
  /// 居中
  Widget $center() {
    return Center(
      child: this,
    );
  }
  
  /// 设置宽度
  Widget $w(double width) {
    return SizedBox(
      width: width,
      child: this,
    );
  }
  
  /// 设置高度
  Widget $h(double height) {
    return SizedBox(
      height: height,
      child: this,
    );
  }
  
  /// 设置尺寸
  Widget $size({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }
  
  /// 添加点击事件
  Widget $onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }
  
  /// 设置不透明度
  Widget $opacity(double opacity) {
    return Opacity(
      opacity: opacity,
      child: this,
    );
  }
  
  /// 设置可见性
  Widget $visibility({bool visible = true}) {
    return Visibility(
      visible: visible,
      child: this,
    );
  }
  
  /// 设置旋转
  Widget $rotate(double angle) {
    return Transform.rotate(
      angle: angle,
      child: this,
    );
  }
  
  /// 设置缩放
  Widget $scale(double scale) {
    return Transform.scale(
      scale: scale,
      child: this,
    );
  }
  
  /// 设置平移
  Widget $translate(Offset offset) {
    return Transform.translate(
      offset: offset,
      child: this,
    );
  }
  
  /// 设置为Expanded
  Widget $expanded({int flex = 1}) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }
  
  /// 设置为Flexible
  Widget $flexible({int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(
      flex: flex,
      fit: fit,
      child: this,
    );
  }
  
  /// 设置约束
  Widget $constraints(BoxConstraints constraints) {
    return ConstrainedBox(
      constraints: constraints,
      child: this,
    );
  }
  
  /// 设置最大宽度
  Widget $maxWidth(double maxWidth) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: this,
    );
  }
  
  /// 设置最小宽度
  Widget $minWidth(double minWidth) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: minWidth),
      child: this,
    );
  }
  
  /// 设置最大高度
  Widget $maxHeight(double maxHeight) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: this,
    );
  }
  
  /// 设置最小高度
  Widget $minHeight(double minHeight) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight),
      child: this,
    );
  }
  
  /// 设置宽高比
  Widget $aspectRatio(double aspectRatio) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: this,
    );
  }
  
  /// 添加阴影
  Widget $shadow({
    Color color = Colors.black26,
    double blurRadius = 10.0,
    double spreadRadius = 0.0,
    Offset offset = const Offset(0, 3),
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            offset: offset,
          ),
        ],
      ),
      child: this,
    );
  }
  
  /// 添加圆角
  Widget $cornerRadius(BorderRadius borderRadius) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: this,
    );
  }
  
  /// 添加圆形裁剪
  Widget $circle() {
    return ClipOval(
      child: this,
    );
  }
  
  /// 设置对齐方式
  Widget $align(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
}

/// 第三方组件扩展示例
/// 
/// 演示如何为第三方组件添加链式调用支持
class ThirdPartyExtensionExample {
  // 示例类，用于展示如何使用扩展
}

/// 为假设的第三方组件CustomButton添加链式调用支持
extension CustomButtonExtension on Widget {
  /// 假设CustomButton有一个onTap回调
  Widget $withOnTap(VoidCallback onTap) {
    return $extend().$apply((widget) {
      // 这里应该是实际的第三方组件API调用
      // 例如: return CustomButton.fromWidget(widget, onTap: onTap);
      
      // 由于没有实际的CustomButton，这里使用GestureDetector模拟
      return GestureDetector(
        onTap: onTap,
        child: widget,
      );
    });
  }
  
  /// 假设CustomButton有一个color属性
  Widget $withColor(Color color) {
    return $extend().$apply((widget) {
      // 这里应该是实际的第三方组件API调用
      // 例如: return CustomButton.fromWidget(widget, color: color);
      
      // 由于没有实际的CustomButton，这里使用Container模拟
      return Container(
        color: color,
        child: widget,
      );
    });
  }
}

/// 第三方组件扩展指南
/// 
/// 提供一个模板，指导用户如何为自己的第三方组件添加链式调用支持
abstract class ThirdPartyExtensionGuide {
  /// 步骤1: 导入oops库
  /// ```dart
  /// import 'package:oops/oops.dart';
  /// ```
  
  /// 步骤2: 为第三方组件创建扩展
  /// ```dart
  /// extension MyWidgetExtension on MyWidget {
  ///   // 添加链式方法
  ///   MyWidget $withCustomProperty(String value) {
  ///     // 如果第三方组件有copyWith方法，优先使用
  ///     return copyWith(customProperty: value);
  ///     
  ///     // 或者创建新实例
  ///     return MyWidget(
  ///       // 复制原始widget的所有属性
  ///       property1: this.property1,
  ///       property2: this.property2,
  ///       // 设置新属性
  ///       customProperty: value,
  ///     );
  ///   }
  /// }
  /// ```
  
  /// 步骤3: 如果无法直接扩展第三方组件，可以使用$extend()方法
  /// ```dart
  /// extension MyWidgetExtension on Widget {
  ///   Widget $withCustomProperty(String value) {
  ///     return $extend().$apply((widget) {
  ///       // 这里应该是实际的第三方组件API调用
  ///       return SomeThirdPartyWidget.fromWidget(widget, customProperty: value);
  ///     });
  ///   }
  /// }
  /// ```
}
