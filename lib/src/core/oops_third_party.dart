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

/// 第三方组件扩展示例
/// 
/// 演示如何为第三方组件添加链式调用支持
class ThirdPartyExtensionExample {
  // 示例类，用于展示第三方组件扩展的用法
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
