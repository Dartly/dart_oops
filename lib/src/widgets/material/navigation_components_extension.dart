import 'package:flutter/material.dart';

/// Drawer组件的扩展
/// 
/// 为Drawer组件提供链式调用API
extension DrawerExtension on Drawer {
  /// 设置子组件
  Drawer $child(Widget? child) => copyWith(child: child);
  
  /// 设置背景颜色
  Drawer $backgroundColor(Color? backgroundColor) => 
      copyWith(backgroundColor: backgroundColor);
  
  /// 设置高度
  Drawer $elevation(double? elevation) => copyWith(elevation: elevation);
  
  /// 设置形状
  Drawer $shape(ShapeBorder? shape) => copyWith(shape: shape);
  
  /// 设置宽度
  Drawer $width(double? width) => copyWith(width: width);
  
  /// 设置语义标签
  Drawer $semanticLabel(String? semanticLabel) => 
      copyWith(semanticLabel: semanticLabel);
  
  /// 复制当前Drawer并应用新的属性
  Drawer copyWith({
    VoidCallback? onPressed,
    Widget? child,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    double? width,
    String? semanticLabel,
  }) {
    return Drawer(
      key: key,
      child: child ?? this.child,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      width: width ?? this.width,
      semanticLabel: semanticLabel ?? this.semanticLabel,
    );
  }
}

/// SnackBar组件的扩展
/// 
/// 为SnackBar组件提供链式调用API
extension SnackBarExtension on SnackBar {
  /// 设置内容
  SnackBar $content(Widget content) => copyWith(content: content);
  
  /// 设置背景颜色
  SnackBar $backgroundColor(Color? backgroundColor) => 
      copyWith(backgroundColor: backgroundColor);
  
  /// 设置高度
  SnackBar $elevation(double? elevation) => copyWith(elevation: elevation);
  
  /// 设置形状
  SnackBar $shape(ShapeBorder? shape) => copyWith(shape: shape);
  
  /// 设置行为
  SnackBar $action(SnackBarAction? action) => copyWith(action: action);
  
  /// 设置持续时间
  SnackBar $duration(Duration duration) => copyWith(duration: duration);
  
  /// 设置填充
  SnackBar $padding(EdgeInsetsGeometry? padding) => copyWith(padding: padding);
  
  /// 设置宽度
  SnackBar $width(double? width) => copyWith(width: width);
  
  /// 设置行为位置
  SnackBar $actionOverflowThreshold(double actionOverflowThreshold) => 
      copyWith(actionOverflowThreshold: actionOverflowThreshold);
  
  /// 设置显示行为
  SnackBar $behavior(SnackBarBehavior? behavior) => copyWith(behavior: behavior);
  
  /// 设置为浮动
  SnackBar $floating() => copyWith(behavior: SnackBarBehavior.floating);
  
  /// 设置为固定
  SnackBar $fixed() => copyWith(behavior: SnackBarBehavior.fixed);
  
  /// 设置边距
  SnackBar $margin(EdgeInsetsGeometry? margin) => copyWith(margin: margin);
  
  /// 设置裁剪行为
  SnackBar $clipBehavior(Clip? clipBehavior) => copyWith(clipBehavior: clipBehavior);
  
  /// 复制当前SnackBar并应用新的属性
  SnackBar copyWith({
    VoidCallback? onPressed,
    Widget? content,
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    SnackBarBehavior? behavior,
    SnackBarAction? action,
    Duration? duration,
    Animation<double>? animation,
    VoidCallback? onVisible,
    double? actionOverflowThreshold,
    Clip? clipBehavior,
    DismissDirection? dismissDirection,
  }) {
    return SnackBar(
      key: key,
      content: content ?? this.content,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      width: width ?? this.width,
      shape: shape ?? this.shape,
      behavior: behavior ?? this.behavior,
      action: action ?? this.action,
      duration: duration ?? this.duration,
      animation: animation ?? this.animation,
      onVisible: onVisible ?? this.onVisible,
      actionOverflowThreshold: actionOverflowThreshold ?? this.actionOverflowThreshold,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      dismissDirection: dismissDirection ?? this.dismissDirection,
    );
  }
}

/// BottomSheet组件的扩展
/// 
/// 为BottomSheet组件提供链式调用API
extension BottomSheetExtension on BottomSheet {
  /// 设置子组件
  BottomSheet $builder(WidgetBuilder builder) => copyWith(builder: builder);
  
  /// 设置背景颜色
  BottomSheet $backgroundColor(Color? backgroundColor) => 
      copyWith(backgroundColor: backgroundColor);
  
  /// 设置高度
  BottomSheet $elevation(double? elevation) => copyWith(elevation: elevation);
  
  /// 设置形状
  BottomSheet $shape(ShapeBorder? shape) => copyWith(shape: shape);
  
  /// 设置裁剪行为
  BottomSheet $clipBehavior(Clip clipBehavior) => 
      copyWith(clipBehavior: clipBehavior);
  
  /// 设置是否启用拖动
  BottomSheet $enableDrag(bool enableDrag) => copyWith(enableDrag: enableDrag);
  
  /// 复制当前BottomSheet并应用新的属性
  BottomSheet copyWith({
    VoidCallback? onPressed,
    AnimationController? animationController,
    WidgetBuilder? builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    bool? enableDrag,
    BottomSheetDragStartHandler? onDragStart,
    BottomSheetDragEndHandler? onDragEnd,
  }) {
    return BottomSheet(
      key: key,
      animationController: animationController ?? this.animationController,
      onClosing: this.onClosing,
      builder: builder ?? this.builder,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      constraints: constraints ?? this.constraints,
      enableDrag: enableDrag ?? this.enableDrag,
      onDragStart: onDragStart ?? this.onDragStart,
      onDragEnd: onDragEnd ?? this.onDragEnd,
    );
  }
}

/// PopupMenu组件的扩展
/// 
/// 为PopupMenuButton组件提供链式调用API
extension PopupMenuButtonExtension<T> on PopupMenuButton<T> {
  /// 设置点击事件
  PopupMenuButton<T> $onPressed(VoidCallback onPressed) => copyWith(onPressed: onPressed);
  /// 设置项目构建器
  PopupMenuButton<T> $itemBuilder(PopupMenuItemBuilder<T> itemBuilder) => 
      copyWith(itemBuilder: itemBuilder);
  
  /// 设置初始值
  PopupMenuButton<T> $initialValue(T? initialValue) => 
      copyWith(initialValue: initialValue);
  
  /// 设置工具提示
  PopupMenuButton<T> $tooltip(String? tooltip) => copyWith(tooltip: tooltip);
  
  /// 设置高度
  PopupMenuButton<T> $elevation(double? elevation) => 
      copyWith(elevation: elevation);
  
  /// 设置填充
  PopupMenuButton<T> $padding(EdgeInsetsGeometry padding) => 
      copyWith(padding: padding);
  
  /// 设置图标
  PopupMenuButton<T> $icon(Widget? icon) => copyWith(icon: icon);
  
  /// 设置图标大小
  PopupMenuButton<T> $iconSize(double? iconSize) => copyWith(iconSize: iconSize);
  
  /// 设置偏移
  PopupMenuButton<T> $offset(Offset offset) => copyWith(offset: offset);
  
  /// 设置是否启用
  PopupMenuButton<T> $enabled(bool enabled) => copyWith(enabled: enabled);
  
  /// 设置形状
  PopupMenuButton<T> $shape(ShapeBorder? shape) => copyWith(shape: shape);
  
  /// 设置颜色
  PopupMenuButton<T> $color(Color? color) => copyWith(color: color);
  
  /// 设置是否使用根导航器
  PopupMenuButton<T> $useRootNavigator(bool useRootNavigator) => 
      copyWith(useRootNavigator: useRootNavigator);
  
  /// 设置位置
  PopupMenuButton<T> $position(PopupMenuPosition? position) => 
      copyWith(position: position);
  
  /// 复制当前PopupMenuButton并应用新的属性
  PopupMenuButton<T> copyWith({
    VoidCallback? onPressed,
    PopupMenuItemBuilder<T>? itemBuilder,
    T? initialValue,
    ValueChanged<T?>? onSelected,
    VoidCallback? onCanceled,
    String? tooltip,
    double? elevation,
    EdgeInsetsGeometry? padding,
    Widget? icon,
    double? iconSize,
    Offset? offset,
    bool? enabled,
    ShapeBorder? shape,
    Color? color,
    bool? enableFeedback,
    BoxConstraints? constraints,
    PopupMenuPosition? position,
    bool? useRootNavigator,
  }) {
    return PopupMenuButton<T>(
      key: key,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      initialValue: initialValue ?? this.initialValue,
      onSelected: onSelected ?? this.onSelected,
      onCanceled: onCanceled ?? this.onCanceled,
      tooltip: tooltip ?? this.tooltip,
      elevation: elevation ?? this.elevation,
      padding: padding ?? this.padding,
      icon: icon ?? this.icon,
      iconSize: iconSize ?? this.iconSize,
      offset: offset ?? this.offset,
      enabled: enabled ?? this.enabled,
      shape: shape ?? this.shape,
      color: color ?? this.color,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      constraints: constraints ?? this.constraints,
      position: position ?? this.position,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      child: this.child,
    );
  }
}

/// Badge组件的扩展
/// 
/// 为Badge组件提供链式调用API
extension BadgeExtension on Badge {
  /// 设置子组件
  Badge $child(Widget? child) => copyWith(child: child);
  
  /// 设置标签
  Badge $label(Widget? label) => copyWith(label: label);
  
  /// 设置文本标签
  Badge $textLabel(String text) => copyWith(label: Text(text));
  
  /// 设置背景颜色
  Badge $backgroundColor(Color backgroundColor) => 
      copyWith(backgroundColor: backgroundColor);
  
  /// 设置文本颜色
  Badge $textColor(Color textColor) => copyWith(textColor: textColor);
  
  /// 设置小尺寸
  Badge $isSmall(bool isSmall) => copyWith(isSmall: isSmall);
  
  /// 设置为小尺寸
  Badge $small() => copyWith(isSmall: true);
  
  /// 设置为标准尺寸
  Badge $standard() => copyWith(isSmall: false);
  
  /// 设置偏移
  Badge $offset(Offset offset) => copyWith(offset: offset);
  
  /// 设置对齐方式
  Badge $alignment(AlignmentGeometry alignment) => 
      copyWith(alignment: alignment);
  
  /// 设置填充
  Badge $padding(EdgeInsetsGeometry padding) => copyWith(padding: padding);
  
  

  
  /// 复制当前Badge并应用新的属性
  Badge copyWith({
    VoidCallback? onPressed,
    Widget? child,
    Widget? label,
    Color? backgroundColor,
    Color? textColor,
    bool? isSmall,
    Offset? offset,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
  }) {
    return Badge(
      key: key,
      child: child ?? this.child,
      label: label ?? this.label,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      offset: offset ?? this.offset,
      alignment: alignment ?? this.alignment,
      padding: padding ?? this.padding,
    );
  }
}
