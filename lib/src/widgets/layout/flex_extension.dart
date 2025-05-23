import 'package:flutter/material.dart';

/// Row组件的扩展
/// 
/// 为Row组件提供链式调用API
extension RowExtension on Row {
  /// 设置主轴对齐方式
  Row $mainAxis(MainAxisAlignment alignment) => 
      copyWith(mainAxisAlignment: alignment);
  
  /// 设置交叉轴对齐方式
  Row $crossAxisAlignment(CrossAxisAlignment alignment) => 
      copyWith(crossAxisAlignment: alignment);
  
  /// 设置主轴尺寸
  Row $mainAxisSize(MainAxisSize size) => 
      copyWith(mainAxisSize: size);
  
  /// 设置为紧凑型
  Row $tight() => $mainAxisSize(MainAxisSize.min);
  
  /// 设置为填充型
  Row $expanded() => $mainAxisSize(MainAxisSize.max);
  
  /// 设置为居中对齐
  Row $centered() => $mainAxis(MainAxisAlignment.center);
  
  /// 设置为两端对齐
  Row $spaceBetween() => $mainAxis(MainAxisAlignment.spaceBetween);
  
  /// 设置为均匀对齐
  Row $spaceEvenly() => $mainAxis(MainAxisAlignment.spaceEvenly);
  
  /// 设置为均匀间隔
  Row $spaceAround() => $mainAxis(MainAxisAlignment.spaceAround);
  
  /// 设置为起始对齐
  Row $start() => $mainAxis(MainAxisAlignment.start);
  
  /// 设置为结束对齐
  Row $end() => $mainAxis(MainAxisAlignment.end);
  
  /// 添加子组件
  Row $addChild(Widget child) => 
      copyWith(children: [...children, child]);
  
  /// 添加多个子组件
  Row $addChildren(List<Widget> newChildren) => 
      copyWith(children: [...children, ...newChildren]);
  
  /// 设置子组件
  Row $children(List<Widget> children) => 
      copyWith(children: children);
  
  /// 复制当前Row并应用新的属性
  Row copyWith({
    Key? key,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    List<Widget>? children,
  }) {
    return Row(
      key: key ?? this.key,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
      textBaseline: textBaseline ?? this.textBaseline,
      children: children ?? this.children,
    );
  }
}

/// Column组件的扩展
/// 
/// 为Column组件提供链式调用API
extension ColumnExtension on Column {
  /// 设置主轴对齐方式
  Column $mainAxisAlignment(MainAxisAlignment alignment) => 
      copyWith(mainAxisAlignment: alignment);
  
  /// 设置交叉轴对齐方式
  Column $crossAxis(CrossAxisAlignment alignment) => 
      copyWith(crossAxisAlignment: alignment);
  
  /// 设置主轴尺寸
  Column $mainAxisSize(MainAxisSize size) => 
      copyWith(mainAxisSize: size);
  
  /// 设置为紧凑型
  Column $tight() => $mainAxisSize(MainAxisSize.min);
  
  /// 设置为填充型
  Column $expanded() => $mainAxisSize(MainAxisSize.max);
  
  /// 设置为居中对齐
  Column $centered() => $mainAxisAlignment(MainAxisAlignment.center);
  
  /// 设置为两端对齐
  Column $spaceBetween() => $mainAxisAlignment(MainAxisAlignment.spaceBetween);
  
  /// 设置为均匀对齐
  Column $spaceEvenly() => $mainAxisAlignment(MainAxisAlignment.spaceEvenly);
  
  /// 设置为均匀间隔
  Column $spaceAround() => $mainAxisAlignment(MainAxisAlignment.spaceAround);
  
  /// 设置为起始对齐
  Column $start() => $mainAxisAlignment(MainAxisAlignment.start);
  
  /// 设置为结束对齐
  Column $end() => $mainAxisAlignment(MainAxisAlignment.end);
  
  /// 添加子组件
  Column $addChild(Widget child) => 
      copyWith(children: [...children, child]);
  
  /// 添加多个子组件
  Column $addChildren(List<Widget> newChildren) => 
      copyWith(children: [...children, ...newChildren]);
  
  /// 设置子组件
  Column $children(List<Widget> children) => 
      copyWith(children: children);
  
  /// 复制当前Column并应用新的属性
  Column copyWith({
    Key? key,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    List<Widget>? children,
  }) {
    return Column(
      key: key ?? this.key,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
      textBaseline: textBaseline ?? this.textBaseline,
      children: children ?? this.children,
    );
  }
}
