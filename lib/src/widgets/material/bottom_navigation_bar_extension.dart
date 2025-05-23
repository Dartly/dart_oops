import 'package:flutter/material.dart';

/// BottomNavigationBar组件的扩展
/// 
/// 为BottomNavigationBar组件提供链式调用API
extension BottomNavigationBarExtension on BottomNavigationBar {
  /// 设置当前选中项
  BottomNavigationBar $currentIndex(int index) => copyWith(currentIndex: index);
  
  /// 设置项目列表
  BottomNavigationBar $items(List<BottomNavigationBarItem> items) => 
      copyWith(items: items);
  
  /// 添加项目
  BottomNavigationBar $addItem(BottomNavigationBarItem item) => 
      copyWith(items: [...items, item]);
  
  /// 设置选中项颜色
  BottomNavigationBar $selectedItemColor(Color color) => 
      copyWith(selectedItemColor: color);
  
  /// 设置未选中项颜色
  BottomNavigationBar $unselectedItemColor(Color color) => 
      copyWith(unselectedItemColor: color);
  
  /// 设置背景色
  BottomNavigationBar $bgColor(Color color) => 
      copyWith(backgroundColor: color);
  
  /// 设置图标大小
  BottomNavigationBar $iconSize(double size) => copyWith(iconSize: size);
  
  /// 设置选中项图标大小
  BottomNavigationBar $selectedIconTheme(IconThemeData theme) => 
      copyWith(selectedIconTheme: theme);
  
  /// 设置未选中项图标大小
  BottomNavigationBar $unselectedIconTheme(IconThemeData theme) => 
      copyWith(unselectedIconTheme: theme);
  
  /// 设置选中项文本样式
  BottomNavigationBar $selectedLabelStyle(TextStyle style) => 
      copyWith(selectedLabelStyle: style);
  
  /// 设置未选中项文本样式
  BottomNavigationBar $unselectedLabelStyle(TextStyle style) => 
      copyWith(unselectedLabelStyle: style);
  
  /// 设置类型
  BottomNavigationBar $type(BottomNavigationBarType type) => 
      copyWith(type: type);
  
  /// 设置为固定类型
  BottomNavigationBar $fixed() => 
      copyWith(type: BottomNavigationBarType.fixed);
  
  /// 设置为移动类型
  BottomNavigationBar $shifting() => 
      copyWith(type: BottomNavigationBarType.shifting);
  
  /// 设置是否显示未选中项标签
  BottomNavigationBar $showUnselectedLabels(bool show) => 
      copyWith(showUnselectedLabels: show);
  
  /// 设置是否显示选中项标签
  BottomNavigationBar $showSelectedLabels(bool show) => 
      copyWith(showSelectedLabels: show);
  
  /// 设置高度
  BottomNavigationBar $elevation(double elevation) => 
      copyWith(elevation: elevation);
  
  /// 复制当前BottomNavigationBar并应用新的属性
  BottomNavigationBar copyWith({
    List<BottomNavigationBarItem>? items,
    ValueChanged<int>? onTap,
    int? currentIndex,
    double? elevation,
    BottomNavigationBarType? type,
    Color? fixedColor,
    Color? backgroundColor,
    double? iconSize,
    Color? selectedItemColor,
    Color? unselectedItemColor,
    IconThemeData? selectedIconTheme,
    IconThemeData? unselectedIconTheme,
    double? selectedFontSize,
    double? unselectedFontSize,
    TextStyle? selectedLabelStyle,
    TextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
    BottomNavigationBarLandscapeLayout? landscapeLayout,
  }) {
    return BottomNavigationBar(
      key: key,
      items: items ?? this.items,
      onTap: onTap ?? this.onTap,
      currentIndex: currentIndex ?? this.currentIndex,
      elevation: elevation ?? this.elevation,
      type: type ?? this.type,
      fixedColor: fixedColor ?? this.fixedColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      iconSize: iconSize ?? this.iconSize,
      selectedItemColor: selectedItemColor ?? this.selectedItemColor,
      unselectedItemColor: unselectedItemColor ?? this.unselectedItemColor,
      selectedIconTheme: selectedIconTheme ?? this.selectedIconTheme,
      unselectedIconTheme: unselectedIconTheme ?? this.unselectedIconTheme,
      selectedFontSize: selectedFontSize ?? this.selectedFontSize,
      unselectedFontSize: unselectedFontSize ?? this.unselectedFontSize,
      selectedLabelStyle: selectedLabelStyle ?? this.selectedLabelStyle,
      unselectedLabelStyle: unselectedLabelStyle ?? this.unselectedLabelStyle,
      showSelectedLabels: showSelectedLabels ?? this.showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels ?? this.showUnselectedLabels,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      landscapeLayout: landscapeLayout ?? this.landscapeLayout,
    );
  }
}
