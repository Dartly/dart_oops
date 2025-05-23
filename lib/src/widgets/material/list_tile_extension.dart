import 'package:flutter/material.dart';

/// ListTile组件的扩展
/// 
/// 为ListTile组件提供链式调用API
extension ListTileExtension on ListTile {
  /// 设置前导组件
  ListTile $leading(Widget? leading) => copyWith(leading: leading);
  
  /// 设置标题
  ListTile $title(Widget? title) => copyWith(title: title);
  
  /// 设置副标题
  ListTile $subtitle(Widget? subtitle) => copyWith(subtitle: subtitle);
  
  /// 设置尾随组件
  ListTile $trailing(Widget? trailing) => copyWith(trailing: trailing);
  
  /// 设置是否为三行
  ListTile $isThreeLine(bool isThreeLine) => copyWith(isThreeLine: isThreeLine);
  
  /// 设置是否密集
  ListTile $dense(bool? dense) => copyWith(dense: dense);
  
  /// 设置可视密度
  ListTile $visualDensity(VisualDensity? visualDensity) => 
      copyWith(visualDensity: visualDensity);
  
  /// 设置形状
  ListTile $shape(ShapeBorder? shape) => copyWith(shape: shape);
  
  /// 设置内容内边距
  ListTile $contentPadding(EdgeInsetsGeometry? contentPadding) => 
      copyWith(contentPadding: contentPadding);
  
  /// 设置是否启用
  ListTile $enabled(bool enabled) => copyWith(enabled: enabled);
  
  /// 设置选中状态
  ListTile $selected(bool selected) => copyWith(selected: selected);
  
  /// 设置焦点颜色
  ListTile $focusColor(Color? focusColor) => copyWith(focusColor: focusColor);
  
  /// 设置悬停颜色
  ListTile $hoverColor(Color? hoverColor) => copyWith(hoverColor: hoverColor);
  
  /// 设置自动聚焦
  ListTile $autofocus(bool autofocus) => copyWith(autofocus: autofocus);
  
  /// 设置瓦片颜色
  ListTile $tileColor(Color? tileColor) => copyWith(tileColor: tileColor);
  
  /// 设置选中瓦片颜色
  ListTile $selectedTileColor(Color? selectedTileColor) => 
      copyWith(selectedTileColor: selectedTileColor);
  
  /// 设置启用反馈
  ListTile $enableFeedback(bool? enableFeedback) => 
      copyWith(enableFeedback: enableFeedback);
  
  /// 设置水平紧凑度
  ListTile $horizontalTitleGap(double? horizontalTitleGap) => 
      copyWith(horizontalTitleGap: horizontalTitleGap);
  
  /// 设置最小前导宽度
  ListTile $minLeadingWidth(double? minLeadingWidth) => 
      copyWith(minLeadingWidth: minLeadingWidth);
  
  /// 复制当前ListTile并应用新的属性
  ListTile copyWith({
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    bool? isThreeLine,
    bool? dense,
    VisualDensity? visualDensity,
    ShapeBorder? shape,
    EdgeInsetsGeometry? contentPadding,
    bool? enabled,
    GestureTapCallback? onTap,
    GestureLongPressCallback? onLongPress,
    MouseCursor? mouseCursor,
    bool? selected,
    Color? focusColor,
    Color? hoverColor,
    FocusNode? focusNode,
    bool? autofocus,
    Color? tileColor,
    Color? selectedTileColor,
    bool? enableFeedback,
    double? horizontalTitleGap,
    double? minLeadingWidth,
    ListTileStyle? style,
  }) {
    return ListTile(
      key: key,
      leading: leading ?? this.leading,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      trailing: trailing ?? this.trailing,
      isThreeLine: isThreeLine ?? this.isThreeLine,
      dense: dense ?? this.dense,
      visualDensity: visualDensity ?? this.visualDensity,
      shape: shape ?? this.shape,
      contentPadding: contentPadding ?? this.contentPadding,
      enabled: enabled ?? this.enabled,
      onTap: onTap ?? this.onTap,
      onLongPress: onLongPress ?? this.onLongPress,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      selected: selected ?? this.selected,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      tileColor: tileColor ?? this.tileColor,
      selectedTileColor: selectedTileColor ?? this.selectedTileColor,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      horizontalTitleGap: horizontalTitleGap ?? this.horizontalTitleGap,
      minLeadingWidth: minLeadingWidth ?? this.minLeadingWidth,
      style: style ?? this.style,
    );
  }
}
