import 'package:flutter/material.dart';

/// OopsWidget是一个通用的Widget包装类
/// 
/// 这个类提供了一种统一的方式来包装和扩展Flutter原生Widget
/// 可以作为自定义Widget扩展的基类
class OopsWidget<T extends Widget> {
  /// 被包装的原始Widget
  final T widget;
  
  /// 构造函数
  const OopsWidget(this.widget);
  
  /// 获取原始Widget
  T get original => widget;
  
  /// 应用转换函数
  R $apply<R extends Widget>(R Function(T widget) transformer) {
    return transformer(widget);
  }
  
  /// 转换为另一种OopsWidget类型
  OopsWidget<R> $transform<R extends Widget>(R Function(T widget) transformer) {
    return OopsWidget<R>(transformer(widget));
  }
  
  /// 将OopsWidget转换回原始Widget
  /// 这允许OopsWidget在Widget树中直接使用
  Widget build() => widget;
}

/// 为OopsWidget添加隐式转换
/// 
/// 这允许OopsWidget在需要Widget的地方直接使用
/// 例如: OopsWidget(Text('Hello')) 可以直接用在 child: 属性中
extension OopsWidgetImplicitConversion<T extends Widget> on OopsWidget<T> {
  /// 隐式转换为Widget
  Widget get asWidget => widget;
}

/// 为所有Widget添加.$oops()扩展方法
/// 
/// 这允许任何Widget通过.$oops()转换为OopsWidget
/// 例如: Text('Hello').$oops()
extension OopsWidgetExtension<T extends Widget> on T {
  /// 将Widget转换为OopsWidget
  OopsWidget<T> $oops() => OopsWidget<T>(this);
}
