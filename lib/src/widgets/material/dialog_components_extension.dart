import 'package:flutter/material.dart';

/// ExpansionPanel组件的扩展
/// 
/// 为ExpansionPanel组件提供链式调用API
extension ExpansionPanelExtension on ExpansionPanel {
  /// 设置头部组件
  ExpansionPanel $headerBuilder(ExpansionPanelHeaderBuilder headerBuilder) => 
      copyWith(headerBuilder: headerBuilder);
  
  /// 设置主体组件
  ExpansionPanel $body(Widget body) => copyWith(body: body);
  
  /// 设置是否展开
  ExpansionPanel $isExpanded(bool isExpanded) => copyWith(isExpanded: isExpanded);
  
  /// 设置是否可展开
  ExpansionPanel $canTapOnHeader(bool canTapOnHeader) => 
      copyWith(canTapOnHeader: canTapOnHeader);
  
  /// 设置背景颜色
  ExpansionPanel $backgroundColor(Color? backgroundColor) => 
      copyWith(backgroundColor: backgroundColor);
  
  /// 复制当前ExpansionPanel并应用新的属性
  ExpansionPanel copyWith({
    ExpansionPanelHeaderBuilder? headerBuilder,
    Widget? body,
    bool? isExpanded,
    bool? canTapOnHeader,
    Color? backgroundColor,
  }) {
    return ExpansionPanel(
      headerBuilder: headerBuilder ?? this.headerBuilder,
      body: body ?? this.body,
      isExpanded: isExpanded ?? this.isExpanded,
      canTapOnHeader: canTapOnHeader ?? this.canTapOnHeader,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}

/// ExpansionPanelList组件的扩展
/// 
/// 为ExpansionPanelList组件提供链式调用API
extension ExpansionPanelListExtension on ExpansionPanelList {
  /// 设置面板列表
  ExpansionPanelList $children(List<ExpansionPanel> children) => 
      copyWith(children: children);
  
  /// 添加面板
  ExpansionPanelList $addPanel(ExpansionPanel panel) => 
      copyWith(children: [...children, panel]);
  
  /// 设置动画持续时间
  ExpansionPanelList $animationDuration(Duration animationDuration) => 
      copyWith(animationDuration: animationDuration);
  
  /// 设置高度因子
  ExpansionPanelList $expandedHeaderPadding(EdgeInsets expandedHeaderPadding) => 
      copyWith(expandedHeaderPadding: expandedHeaderPadding);
  
  /// 设置分隔线颜色
  ExpansionPanelList $dividerColor(Color? dividerColor) => 
      copyWith(dividerColor: dividerColor);
  
  /// 设置高度
  ExpansionPanelList $elevation(double elevation) => 
      copyWith(elevation: elevation);
  
  /// 复制当前ExpansionPanelList并应用新的属性
  ExpansionPanelList copyWith({
    List<ExpansionPanel>? children,
    ExpansionPanelCallback? expansionCallback,
    Duration? animationDuration,
    EdgeInsets? expandedHeaderPadding,
    Color? dividerColor,
    double? elevation,
  }) {
    return ExpansionPanelList(
      key: key,
      children: children ?? this.children,
      expansionCallback: expansionCallback ?? this.expansionCallback,
      animationDuration: animationDuration ?? this.animationDuration,
      expandedHeaderPadding: expandedHeaderPadding ?? this.expandedHeaderPadding,
      dividerColor: dividerColor ?? this.dividerColor,
      elevation: elevation ?? this.elevation,
    );
  }
}



