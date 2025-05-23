import 'package:flutter/material.dart';

/// FloatingActionButton组件的扩展
///
/// 为FloatingActionButton组件提供链式调用API
extension FloatingActionButtonExtension on FloatingActionButton {
  /// 设置子组件
  FloatingActionButton $child(Widget child) => copyWith(child: child);

  /// 设置工具提示
  FloatingActionButton $tooltip(String tooltip) => copyWith(tooltip: tooltip);

  /// 设置前景色
  FloatingActionButton $foregroundColor(Color color) =>
      copyWith(foregroundColor: color);

  /// 设置背景色
  FloatingActionButton $backgroundColor(Color color) =>
      copyWith(backgroundColor: color);

  /// 设置焦点色
  FloatingActionButton $focusColor(Color color) => copyWith(focusColor: color);

  /// 设置悬停色
  FloatingActionButton $hoverColor(Color color) => copyWith(hoverColor: color);

  /// 设置飞溅色
  FloatingActionButton $splashColor(Color color) =>
      copyWith(splashColor: color);

  /// 设置高度
  FloatingActionButton $elevation(double elevation) =>
      copyWith(elevation: elevation);

  /// 设置焦点高度
  FloatingActionButton $focusElevation(double elevation) =>
      copyWith(focusElevation: elevation);

  /// 设置悬停高度
  FloatingActionButton $hoverElevation(double elevation) =>
      copyWith(hoverElevation: elevation);

  /// 设置高亮高度
  FloatingActionButton $highlightElevation(double elevation) =>
      copyWith(highlightElevation: elevation);

  /// 设置禁用高度
  FloatingActionButton $disabledElevation(double elevation) =>
      copyWith(disabledElevation: elevation);

  /// 设置形状
  FloatingActionButton $shape(ShapeBorder shape) => copyWith(shape: shape);

  /// 设置是否为迷你尺寸
  FloatingActionButton $mini(bool mini) => copyWith(mini: mini);

  /// 设置为迷你尺寸
  FloatingActionButton $asMini() => copyWith(mini: true);

  /// 设置为标准尺寸
  FloatingActionButton $asStandard() => copyWith(mini: false);

  /// 设置是否自动聚焦
  FloatingActionButton $autofocus(bool autofocus) =>
      copyWith(autofocus: autofocus);

  /// 设置裁剪行为
  FloatingActionButton $clipBehavior(Clip clipBehavior) =>
      copyWith(clipBehavior: clipBehavior);

  /// 设置是否为扩展FAB
  FloatingActionButton $isExtended(bool isExtended) =>
      copyWith(isExtended: isExtended);

  /// 设置为扩展FAB
  FloatingActionButton $extended() => copyWith(isExtended: true);

  /// 复制当前FloatingActionButton并应用新的属性
  FloatingActionButton copyWith({
    Widget? child,
    String? tooltip,
    Color? foregroundColor,
    Color? backgroundColor,
    Color? focusColor,
    Color? hoverColor,
    Color? splashColor,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    VoidCallback? onPressed,
    MouseCursor? mouseCursor,
    bool? mini,
    ShapeBorder? shape,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    MaterialTapTargetSize? materialTapTargetSize,
    bool? isExtended,
    bool? enableFeedback,
  }) {
    return FloatingActionButton(
      key: key,
      child: child ?? this.child,
      tooltip: tooltip ?? this.tooltip,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      splashColor: splashColor ?? this.splashColor,
      elevation: elevation ?? this.elevation,
      focusElevation: focusElevation ?? this.focusElevation,
      hoverElevation: hoverElevation ?? this.hoverElevation,
      highlightElevation: highlightElevation ?? this.highlightElevation,
      disabledElevation: disabledElevation ?? this.disabledElevation,
      onPressed: onPressed ?? this.onPressed,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      mini: mini ?? this.mini,
      shape: shape ?? this.shape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      materialTapTargetSize:
          materialTapTargetSize ?? this.materialTapTargetSize,
      isExtended: isExtended ?? this.isExtended,
      enableFeedback: enableFeedback ?? this.enableFeedback,
    );
  }
}
