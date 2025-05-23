import 'package:flutter/material.dart';

/// Chip组件的扩展
///
/// 为Chip组件提供链式调用API
extension ChipExtension on Chip {
  /// 设置标签
  Chip $label(Widget label) => copyWith(label: label);

  /// 设置头像
  Chip $avatar(Widget? avatar) => copyWith(avatar: avatar);

  /// 设置删除图标
  Chip $deleteIcon(Widget? deleteIcon) => copyWith(deleteIcon: deleteIcon);

  /// 设置是否启用删除
  Chip $onDeleted(VoidCallback? onDeleted) => copyWith(onDeleted: onDeleted);

  /// 设置删除按钮工具提示
  Chip $deleteButtonTooltipMessage(String? deleteButtonTooltipMessage) =>
      copyWith(deleteButtonTooltipMessage: deleteButtonTooltipMessage);

  /// 设置标签样式
  Chip $labelStyle(TextStyle? labelStyle) => copyWith(labelStyle: labelStyle);

  /// 设置标签填充
  Chip $labelPadding(EdgeInsetsGeometry? labelPadding) =>
      copyWith(labelPadding: labelPadding);

  /// 设置填充
  Chip $padding(EdgeInsetsGeometry? padding) => copyWith(padding: padding);

  /// 设置可视密度
  Chip $visualDensity(VisualDensity? visualDensity) =>
      copyWith(visualDensity: visualDensity);

  /// 设置背景颜色
  Chip $backgroundColor(Color? backgroundColor) =>
      copyWith(backgroundColor: backgroundColor);

  /// 设置阴影颜色
  Chip $shadowColor(Color? shadowColor) => copyWith(shadowColor: shadowColor);

  /// 设置表面色调颜色
  Chip $surfaceTintColor(Color? surfaceTintColor) =>
      copyWith(surfaceTintColor: surfaceTintColor);

  /// 设置高度
  Chip $elevation(double? elevation) => copyWith(elevation: elevation);

  /// 设置形状
  Chip $shape(OutlinedBorder? shape) => copyWith(shape: shape);

  /// 设置裁剪行为
  Chip $clipBehavior(Clip clipBehavior) => copyWith(clipBehavior: clipBehavior);

  /// 设置材质颜色
  Chip $materialTapTargetSize(MaterialTapTargetSize? materialTapTargetSize) =>
      copyWith(materialTapTargetSize: materialTapTargetSize);

  /// 复制当前Chip并应用新的属性
  Chip copyWith({
    Widget? avatar,
    Widget? label,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    Widget? deleteIcon,
    VoidCallback? onDeleted,
    Color? deleteIconColor,
    String? deleteButtonTooltipMessage,
    EdgeInsetsGeometry? padding,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? backgroundColor,
    Color? side,
    OutlinedBorder? shape,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    MaterialStateProperty<Color?>? color,
  }) {
    return Chip(
      key: key,
      avatar: avatar ?? this.avatar,
      label: label ?? this.label,
      labelStyle: labelStyle ?? this.labelStyle,
      labelPadding: labelPadding ?? this.labelPadding,
      deleteIcon: deleteIcon ?? this.deleteIcon,
      onDeleted: onDeleted ?? this.onDeleted,
      deleteIconColor: deleteIconColor ?? this.deleteIconColor,
      deleteButtonTooltipMessage:
          deleteButtonTooltipMessage ?? this.deleteButtonTooltipMessage,
      padding: padding ?? this.padding,
      visualDensity: visualDensity ?? this.visualDensity,
      materialTapTargetSize:
          materialTapTargetSize ?? this.materialTapTargetSize,
      elevation: elevation ?? this.elevation,
      shadowColor: shadowColor ?? this.shadowColor,
      surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shape: shape ?? this.shape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
    );
  }
}
