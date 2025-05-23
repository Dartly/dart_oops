import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// AppBar组件的扩展
/// 
/// 为AppBar组件提供链式调用API
extension AppBarExtension on AppBar {
  /// 设置标题
  AppBar $title(Widget title) => copyWith(title: title);
  
  /// 设置背景色
  AppBar $bgColor(Color color) => copyWith(backgroundColor: color);
  
  /// 设置前景色
  AppBar $foregroundColor(Color color) => copyWith(foregroundColor: color);
  
  /// 设置阴影高度
  AppBar $elevation(double elevation) => copyWith(elevation: elevation);
  
  /// 设置阴影颜色
  AppBar $shadowColor(Color color) => copyWith(shadowColor: color);
  
  /// 设置是否居中标题
  AppBar $centerTitle(bool center) => copyWith(centerTitle: center);
  
  /// 设置前导组件
  AppBar $leading(Widget leading) => copyWith(leading: leading);
  
  /// 设置是否自动添加返回按钮
  AppBar $automaticallyImplyLeading(bool imply) => 
      copyWith(automaticallyImplyLeading: imply);
  
  /// 设置操作按钮
  AppBar $actions(List<Widget> actions) => copyWith(actions: actions);
  
  /// 添加操作按钮
  AppBar $addAction(Widget action) => 
      copyWith(actions: [...?this.actions, action]);
  
  /// 设置底部组件
  AppBar $bottom(PreferredSizeWidget bottom) => copyWith(bottom: bottom);
  
  /// 设置形状
  AppBar $shape(ShapeBorder shape) => copyWith(shape: shape);
  
  /// 设置图标主题
  AppBar $iconTheme(IconThemeData iconTheme) => copyWith(iconTheme: iconTheme);
  
  /// 设置操作图标主题
  AppBar $actionsIconTheme(IconThemeData iconTheme) => 
      copyWith(actionsIconTheme: iconTheme);
  
  /// 设置亮度
  AppBar $brightness(Brightness brightness) => 
      copyWith(systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: brightness,
      ));
  
  /// 设置工具栏高度
  AppBar $toolbarHeight(double height) => copyWith(toolbarHeight: height);
  
  /// 设置工具栏不透明度
  AppBar $toolbarOpacity(double opacity) => copyWith(toolbarOpacity: opacity);
  
  /// 设置底部不透明度
  AppBar $bottomOpacity(double opacity) => copyWith(bottomOpacity: opacity);
  
  /// 设置工具栏文本样式
  AppBar $toolbarTextStyle(TextStyle style) => copyWith(toolbarTextStyle: style);
  
  /// 设置标题文本样式
  AppBar $titleTextStyle(TextStyle style) => copyWith(titleTextStyle: style);
  
  /// 复制当前AppBar并应用新的属性
  AppBar copyWith({
    Widget? leading,
    bool? automaticallyImplyLeading,
    Widget? title,
    List<Widget>? actions,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    bool? primary,
    bool? centerTitle,
    bool? excludeHeaderSemantics,
    double? titleSpacing,
    double? toolbarOpacity,
    double? bottomOpacity,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool? forceMaterialTransparency,
    Clip? clipBehavior,
  }) {
    return AppBar(
      key: key,
      leading: leading ?? this.leading,
      automaticallyImplyLeading: automaticallyImplyLeading ?? this.automaticallyImplyLeading,
      title: title ?? this.title,
      actions: actions ?? this.actions,
      flexibleSpace: flexibleSpace ?? this.flexibleSpace,
      bottom: bottom ?? this.bottom,
      elevation: elevation ?? this.elevation,
      scrolledUnderElevation: scrolledUnderElevation ?? this.scrolledUnderElevation,
      shadowColor: shadowColor ?? this.shadowColor,
      surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
      shape: shape ?? this.shape,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      iconTheme: iconTheme ?? this.iconTheme,
      actionsIconTheme: actionsIconTheme ?? this.actionsIconTheme,
      primary: primary ?? this.primary,
      centerTitle: centerTitle ?? this.centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics ?? this.excludeHeaderSemantics,
      titleSpacing: titleSpacing ?? this.titleSpacing,
      toolbarOpacity: toolbarOpacity ?? this.toolbarOpacity,
      bottomOpacity: bottomOpacity ?? this.bottomOpacity,
      toolbarHeight: toolbarHeight ?? this.toolbarHeight,
      leadingWidth: leadingWidth ?? this.leadingWidth,
      toolbarTextStyle: toolbarTextStyle ?? this.toolbarTextStyle,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      systemOverlayStyle: systemOverlayStyle ?? this.systemOverlayStyle,
      forceMaterialTransparency: forceMaterialTransparency ?? this.forceMaterialTransparency,
      clipBehavior: clipBehavior ?? this.clipBehavior,
    );
  }
}
