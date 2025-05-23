
import 'package:flutter/material.dart';

/// AlertDialog组件的扩展
/// 
/// 为AlertDialog组件提供链式调用API
extension AlertDialogExtension on AlertDialog {
  /// 设置标题
  AlertDialog $title(Widget? title) => copyWith(title: title);
  
  /// 设置内容
  AlertDialog $content(Widget? content) => copyWith(content: content);
  
  /// 设置操作
  AlertDialog $actions(List<Widget>? actions) => copyWith(actions: actions);
  
  /// 添加操作
  AlertDialog $addAction(Widget action) => 
      copyWith(actions: [...?actions, action]);
  
  /// 设置标题文本样式
  AlertDialog $titleTextStyle(TextStyle? titleTextStyle) => 
      copyWith(titleTextStyle: titleTextStyle);
  
  /// 设置内容文本样式
  AlertDialog $contentTextStyle(TextStyle? contentTextStyle) => 
      copyWith(contentTextStyle: contentTextStyle);
  
  /// 设置背景颜色
  AlertDialog $backgroundColor(Color? backgroundColor) => 
      copyWith(backgroundColor: backgroundColor);
  
  /// 设置高度
  AlertDialog $elevation(double? elevation) => copyWith(elevation: elevation);
  
  /// 设置语义标签
  AlertDialog $semanticLabel(String? semanticLabel) => 
      copyWith(semanticLabel: semanticLabel);
  
  /// 设置形状
  AlertDialog $shape(ShapeBorder? shape) => copyWith(shape: shape);
  
  /// 设置边框半径
  AlertDialog $borderRadius(BorderRadius radius) => 
      copyWith(shape: RoundedRectangleBorder(borderRadius: radius));
  
  /// 设置对齐方式
  AlertDialog $alignment(AlignmentGeometry? alignment) => 
      copyWith(alignment: alignment);
  
  /// 设置裁剪行为
  AlertDialog $clipBehavior(Clip clipBehavior) => 
      copyWith(clipBehavior: clipBehavior);
  
  /// 复制当前AlertDialog并应用新的属性
  AlertDialog copyWith({
    Widget? icon,
    Widget? title,
    TextStyle? titleTextStyle,
    Widget? content,
    TextStyle? contentTextStyle,
    List<Widget>? actions,
    EdgeInsetsGeometry? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    OverflowBarAlignment? actionsOverflowAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    EdgeInsetsGeometry? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    String? semanticLabel,
    EdgeInsets? insetPadding,
    Clip? clipBehavior,
    ShapeBorder? shape,
    AlignmentGeometry? alignment,
    bool? scrollable,
  }) {
    return AlertDialog(
      key: key,
      icon: icon,
      title: title,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      content: content,
      contentTextStyle: contentTextStyle ?? this.contentTextStyle,
      actions: actions,
      actionsPadding: actionsPadding ?? this.actionsPadding,
      actionsAlignment: actionsAlignment ?? this.actionsAlignment,
      actionsOverflowAlignment: actionsOverflowAlignment ?? this.actionsOverflowAlignment,
      actionsOverflowDirection: actionsOverflowDirection ?? this.actionsOverflowDirection,
      actionsOverflowButtonSpacing: actionsOverflowButtonSpacing ?? this.actionsOverflowButtonSpacing,
      buttonPadding: buttonPadding ?? this.buttonPadding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      insetPadding: insetPadding ?? this.insetPadding,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      shape: shape ?? this.shape,
      alignment: alignment ?? this.alignment,
      scrollable: scrollable ?? this.scrollable,
    );
  }
}
