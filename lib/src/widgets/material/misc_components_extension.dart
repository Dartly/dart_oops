import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// DropdownButton组件的扩展
///
/// 为DropdownButton组件提供链式调用API
extension DropdownButtonExtension<T> on DropdownButton<T> {
  /// 设置值
  DropdownButton<T> $value(T? value) => copyWith(value: value);

  /// 设置项目列表
  DropdownButton<T> $items(List<DropdownMenuItem<T>>? items) =>
      copyWith(items: items);

  /// 添加项目
  DropdownButton<T> $addItem(DropdownMenuItem<T> item) =>
      copyWith(items: [...?items, item]);

  /// 设置提示
  DropdownButton<T> $hint(Widget? hint) => copyWith(hint: hint);

  /// 设置禁用提示
  DropdownButton<T> $disabledHint(Widget? disabledHint) =>
      copyWith(disabledHint: disabledHint);

  /// 设置是否启用
  DropdownButton<T> $enabled(bool enabled) => copyWith(isEnabled: enabled);

  /// 设置图标
  DropdownButton<T> $icon(Widget? icon) => copyWith(icon: icon);

  /// 设置图标大小
  DropdownButton<T> $iconSize(double iconSize) => copyWith(iconSize: iconSize);

  /// 设置图标颜色
  DropdownButton<T> $iconColor(Color? iconColor) =>
      copyWith(iconColor: iconColor);

  /// 设置样式
  DropdownButton<T> $style(TextStyle? style) => copyWith(style: style);

  /// 设置下划线
  DropdownButton<T> $underline(Widget? underline) =>
      copyWith(underline: underline);

  /// 设置是否自动聚焦
  DropdownButton<T> $autofocus(bool autofocus) =>
      copyWith(autofocus: autofocus);

  /// 设置下拉颜色
  DropdownButton<T> $dropdownColor(Color? dropdownColor) =>
      copyWith(dropdownColor: dropdownColor);

  /// 设置菜单最大高度
  DropdownButton<T> $menuMaxHeight(double? menuMaxHeight) =>
      copyWith(menuMaxHeight: menuMaxHeight);

  /// 设置是否密集
  DropdownButton<T> $isDense(bool isDense) => copyWith(isDense: isDense);

  /// 设置是否扩展
  DropdownButton<T> $isExpanded(bool isExpanded) =>
      copyWith(isExpanded: isExpanded);

  /// 设置边框半径
  DropdownButton<T> $borderRadius(BorderRadius? borderRadius) =>
      copyWith(borderRadius: borderRadius);

  /// 设置填充
  DropdownButton<T> $padding(EdgeInsetsGeometry? padding) =>
      copyWith(padding: padding);

  /// 复制当前DropdownButton并应用新的属性
  DropdownButton<T> copyWith({
    List<DropdownMenuItem<T>>? items,
    T? value,
    Widget? hint,
    Widget? disabledHint,
    ValueChanged<T?>? onChanged,
    VoidCallback? onTap,
    int? elevation,
    TextStyle? style,
    Widget? underline,
    Widget? icon,
    Color? iconDisabledColor,
    Color? iconEnabledColor,
    double? iconSize,
    Color? iconColor,
    bool? isDense,
    bool? isExpanded,
    double? itemHeight,
    Color? focusColor,
    FocusNode? focusNode,
    bool? autofocus,
    Color? dropdownColor,
    double? menuMaxHeight,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    BorderRadius? borderRadius,
    EdgeInsetsGeometry? padding,
    bool? isEnabled,
  }) {
    return DropdownButton<T>(
      key: key,
      items: items ?? this.items,
      selectedItemBuilder: selectedItemBuilder,
      value: value ?? this.value,
      hint: hint ?? this.hint,
      disabledHint: disabledHint ?? this.disabledHint,
      onChanged: isEnabled == false ? null : (onChanged ?? this.onChanged),
      onTap: onTap ?? this.onTap,
      elevation: elevation ?? this.elevation,
      style: style ?? this.style,
      underline: underline ?? this.underline,
      icon: icon ?? this.icon,
      iconDisabledColor: iconDisabledColor ?? this.iconDisabledColor,
      iconEnabledColor: iconEnabledColor ?? this.iconEnabledColor,
      iconSize: iconSize ?? this.iconSize,
      isDense: isDense ?? this.isDense,
      isExpanded: isExpanded ?? this.isExpanded,
      itemHeight: itemHeight ?? this.itemHeight,
      focusColor: focusColor ?? this.focusColor,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      dropdownColor: dropdownColor ?? this.dropdownColor,
      menuMaxHeight: menuMaxHeight ?? this.menuMaxHeight,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      alignment: alignment ?? this.alignment,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
    );
  }
}

/// TabBar组件的扩展
///
/// 为TabBar组件提供链式调用API
extension TabBarExtension on TabBar {
  /// 设置标签列表
  TabBar $tabs(List<Widget> tabs) => copyWith(tabs: tabs);

  /// 添加标签
  TabBar $addTab(Widget tab) => copyWith(tabs: [...tabs, tab]);

  /// 设置是否自动调整大小
  TabBar $isScrollable(bool isScrollable) =>
      copyWith(isScrollable: isScrollable);

  /// 设置填充
  TabBar $padding(EdgeInsetsGeometry? padding) => copyWith(padding: padding);

  /// 设置指示器颜色
  TabBar $indicatorColor(Color? indicatorColor) =>
      copyWith(indicatorColor: indicatorColor);

  /// 设置自动调整指示器大小
  TabBar $automaticIndicatorColorAdjustment(
          bool automaticIndicatorColorAdjustment) =>
      copyWith(
          automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment);

  /// 设置指示器权重
  TabBar $indicatorWeight(double indicatorWeight) =>
      copyWith(indicatorWeight: indicatorWeight);

  /// 设置指示器填充
  TabBar $indicatorPadding(EdgeInsetsGeometry indicatorPadding) =>
      copyWith(indicatorPadding: indicatorPadding);

  /// 设置指示器大小
  TabBar $indicatorSize(TabBarIndicatorSize? indicatorSize) =>
      copyWith(indicatorSize: indicatorSize);

  /// 设置标签颜色
  TabBar $labelColor(Color? labelColor) => copyWith(labelColor: labelColor);

  /// 设置标签样式
  TabBar $labelStyle(TextStyle? labelStyle) => copyWith(labelStyle: labelStyle);

  /// 设置标签填充
  TabBar $labelPadding(EdgeInsetsGeometry? labelPadding) =>
      copyWith(labelPadding: labelPadding);

  /// 设置未选中标签颜色
  TabBar $unselectedLabelColor(Color? unselectedLabelColor) =>
      copyWith(unselectedLabelColor: unselectedLabelColor);

  /// 设置未选中标签样式
  TabBar $unselectedLabelStyle(TextStyle? unselectedLabelStyle) =>
      copyWith(unselectedLabelStyle: unselectedLabelStyle);

  /// 设置拖动开始行为
  TabBar $dragStartBehavior(DragStartBehavior dragStartBehavior) =>
      copyWith(dragStartBehavior: dragStartBehavior);

  /// 设置物理特性
  TabBar $physics(ScrollPhysics? physics) => copyWith(physics: physics);

  /// 复制当前TabBar并应用新的属性
  TabBar copyWith({
    List<Widget>? tabs,
    TabController? controller,
    bool? isScrollable,
    EdgeInsetsGeometry? padding,
    Color? indicatorColor,
    bool? automaticIndicatorColorAdjustment,
    double? indicatorWeight,
    EdgeInsetsGeometry? indicatorPadding,
    Decoration? indicator,
    TabBarIndicatorSize? indicatorSize,
    Color? labelColor,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    Color? unselectedLabelColor,
    TextStyle? unselectedLabelStyle,
    DragStartBehavior? dragStartBehavior,
    MaterialStateProperty<Color?>? overlayColor,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
    ScrollPhysics? physics,
    InteractiveInkFeatureFactory? splashFactory,
    BorderRadius? splashBorderRadius,
  }) {
    return TabBar(
      key: key,
      tabs: tabs ?? this.tabs,
      controller: controller ?? this.controller,
      isScrollable: isScrollable ?? this.isScrollable,
      padding: padding ?? this.padding,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment ??
          this.automaticIndicatorColorAdjustment,
      indicatorWeight: indicatorWeight ?? this.indicatorWeight,
      indicatorPadding: indicatorPadding ?? this.indicatorPadding,
      indicator: indicator ?? this.indicator,
      indicatorSize: indicatorSize ?? this.indicatorSize,
      labelColor: labelColor ?? this.labelColor,
      labelStyle: labelStyle ?? this.labelStyle,
      labelPadding: labelPadding ?? this.labelPadding,
      unselectedLabelColor: unselectedLabelColor ?? this.unselectedLabelColor,
      unselectedLabelStyle: unselectedLabelStyle ?? this.unselectedLabelStyle,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      overlayColor: overlayColor ?? this.overlayColor,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      onTap: this.onTap,
      physics: physics ?? this.physics,
      splashFactory: splashFactory ?? this.splashFactory,
      splashBorderRadius: splashBorderRadius ?? this.splashBorderRadius,
    );
  }
}

/// TabBarView组件的扩展
///
/// 为TabBarView组件提供链式调用API
extension TabBarViewExtension on TabBarView {
  /// 设置子组件列表
  TabBarView $children(List<Widget> children) => copyWith(children: children);

  /// 添加子组件
  TabBarView $addChild(Widget child) =>
      copyWith(children: [...children, child]);

  /// 设置物理特性
  TabBarView $physics(ScrollPhysics? physics) => copyWith(physics: physics);

  /// 设置拖动开始行为
  TabBarView $dragStartBehavior(DragStartBehavior dragStartBehavior) =>
      copyWith(dragStartBehavior: dragStartBehavior);

  /// 复制当前TabBarView并应用新的属性
  TabBarView copyWith({
    List<Widget>? children,
    TabController? controller,
    ScrollPhysics? physics,
    DragStartBehavior? dragStartBehavior,
    Clip? clipBehavior,
  }) {
    return TabBarView(
      key: key,
      children: children ?? this.children,
      controller: controller ?? this.controller,
      physics: physics ?? this.physics,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      clipBehavior: clipBehavior ?? this.clipBehavior,
    );
  }
}

/// Divider组件的扩展
///
/// 为Divider组件提供链式调用API
extension DividerExtension on Divider {
  /// 设置高度
  Divider $height(double? height) => copyWith(height: height);

  /// 设置厚度
  Divider $thickness(double? thickness) => copyWith(thickness: thickness);

  /// 设置缩进
  Divider $indent(double? indent) => copyWith(indent: indent);

  /// 设置结尾缩进
  Divider $endIndent(double? endIndent) => copyWith(endIndent: endIndent);

  /// 设置颜色
  Divider $color(Color? color) => copyWith(color: color);

  /// 复制当前Divider并应用新的属性
  Divider copyWith({
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
  }) {
    return Divider(
      key: key,
      height: height ?? this.height,
      thickness: thickness ?? this.thickness,
      indent: indent ?? this.indent,
      endIndent: endIndent ?? this.endIndent,
      color: color ?? this.color,
    );
  }
}

/// CircularProgressIndicator组件的扩展
///
/// 为CircularProgressIndicator组件提供链式调用API
extension CircularProgressIndicatorExtension on CircularProgressIndicator {
  /// 设置值
  CircularProgressIndicator $value(double? value) => copyWith(value: value);

  /// 设置背景颜色
  CircularProgressIndicator $backgroundColor(Color? backgroundColor) =>
      copyWith(backgroundColor: backgroundColor);

  /// 设置颜色
  CircularProgressIndicator $color(Color? color) => copyWith(color: color);

  /// 设置笔画宽度
  CircularProgressIndicator $strokeWidth(double strokeWidth) =>
      copyWith(strokeWidth: strokeWidth);

  /// 复制当前CircularProgressIndicator并应用新的属性
  CircularProgressIndicator copyWith({
    double? value,
    Color? backgroundColor,
    Color? color,
    Animation<Color?>? valueColor,
    double? strokeWidth,
    String? semanticsLabel,
    String? semanticsValue,
  }) {
    return CircularProgressIndicator(
      key: key,
      value: value ?? this.value,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
      valueColor: valueColor ?? this.valueColor,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      semanticsValue: semanticsValue ?? this.semanticsValue,
    );
  }
}

/// LinearProgressIndicator组件的扩展
///
/// 为LinearProgressIndicator组件提供链式调用API
extension LinearProgressIndicatorExtension on LinearProgressIndicator {
  /// 设置值
  LinearProgressIndicator $value(double? value) => copyWith(value: value);

  /// 设置背景颜色
  LinearProgressIndicator $backgroundColor(Color? backgroundColor) =>
      copyWith(backgroundColor: backgroundColor);

  /// 设置颜色
  LinearProgressIndicator $color(Color? color) => copyWith(color: color);

  /// 设置最小高度
  LinearProgressIndicator $minHeight(double? minHeight) =>
      copyWith(minHeight: minHeight);

  /// 复制当前LinearProgressIndicator并应用新的属性
  LinearProgressIndicator copyWith({
    double? value,
    Color? backgroundColor,
    Color? color,
    Animation<Color?>? valueColor,
    double? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
  }) {
    return LinearProgressIndicator(
      key: key,
      value: value ?? this.value,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
      valueColor: valueColor ?? this.valueColor,
      minHeight: minHeight ?? this.minHeight,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      semanticsValue: semanticsValue ?? this.semanticsValue,
    );
  }
}
