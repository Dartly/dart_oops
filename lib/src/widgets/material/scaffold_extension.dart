import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Scaffold组件的扩展
/// 
/// 为Scaffold组件提供链式调用API
extension ScaffoldExtension on Scaffold {
  /// 设置AppBar
  Scaffold $appBar(PreferredSizeWidget appBar) => copyWith(appBar: appBar);
  
  /// 设置主体内容
  Scaffold $body(Widget body) => copyWith(body: body);
  
  /// 设置背景色
  Scaffold $bgColor(Color color) => copyWith(backgroundColor: color);
  
  /// 设置浮动操作按钮
  Scaffold $floatingActionButton(Widget fab) => 
      copyWith(floatingActionButton: fab);
  
  /// 设置浮动操作按钮位置
  Scaffold $floatingActionButtonLocation(FloatingActionButtonLocation location) => 
      copyWith(floatingActionButtonLocation: location);
  
  /// 设置底部导航栏
  Scaffold $bottomNavigationBar(Widget bottomNavigationBar) => 
      copyWith(bottomNavigationBar: bottomNavigationBar);
  
  /// 设置左侧抽屉
  Scaffold $drawer(Widget drawer) => copyWith(drawer: drawer);
  
  /// 设置右侧抽屉
  Scaffold $endDrawer(Widget endDrawer) => copyWith(endDrawer: endDrawer);
  
  /// 设置底部Sheet
  Scaffold $bottomSheet(Widget bottomSheet) => 
      copyWith(bottomSheet: bottomSheet);
  
  /// 设置是否调整大小以避免底部插入
  Scaffold $resizeToAvoidBottomInset(bool resize) => 
      copyWith(resizeToAvoidBottomInset: resize);
  
  /// 设置是否拉伸主体
  Scaffold $extendBody(bool extend) => copyWith(extendBody: extend);
  
  /// 设置是否拉伸主体到AppBar下方
  Scaffold $extendBodyBehindAppBar(bool extend) => 
      copyWith(extendBodyBehindAppBar: extend);
  
  /// 设置主要颜色
  Scaffold $primaryColor(Color color) => 
      copyWith(backgroundColor: color);
  
  /// 设置抽屉边缘拖动宽度
  Scaffold $drawerEdgeDragWidth(double width) => 
      copyWith(drawerEdgeDragWidth: width);
  
  /// 设置抽屉是否可拖动打开
  Scaffold $drawerEnableOpenDragGesture(bool enable) => 
      copyWith(drawerEnableOpenDragGesture: enable);
  
  /// 设置右侧抽屉是否可拖动打开
  Scaffold $endDrawerEnableOpenDragGesture(bool enable) => 
      copyWith(endDrawerEnableOpenDragGesture: enable);
  
  /// 复制当前Scaffold并应用新的属性
  Scaffold copyWith({
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<Widget>? persistentFooterButtons,
    Widget? drawer,
    DrawerCallback? onDrawerChanged,
    Widget? endDrawer,
    DrawerCallback? onEndDrawerChanged,
    Widget? bottomNavigationBar,
    Widget? bottomSheet,
    Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool? primary,
    DragStartBehavior? drawerDragStartBehavior,
    bool? extendBody,
    bool? extendBodyBehindAppBar,
    Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool? drawerEnableOpenDragGesture,
    bool? endDrawerEnableOpenDragGesture,
    String? restorationId,
  }) {
    return Scaffold(
      key: key,
      appBar: appBar ?? this.appBar,
      body: body ?? this.body,
      floatingActionButton: floatingActionButton ?? this.floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation ?? this.floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator ?? this.floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons ?? this.persistentFooterButtons,
      drawer: drawer ?? this.drawer,
      onDrawerChanged: onDrawerChanged ?? this.onDrawerChanged,
      endDrawer: endDrawer ?? this.endDrawer,
      onEndDrawerChanged: onEndDrawerChanged ?? this.onEndDrawerChanged,
      bottomNavigationBar: bottomNavigationBar ?? this.bottomNavigationBar,
      bottomSheet: bottomSheet ?? this.bottomSheet,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? this.resizeToAvoidBottomInset,
      primary: primary ?? this.primary,
      drawerDragStartBehavior: drawerDragStartBehavior ?? this.drawerDragStartBehavior,
      extendBody: extendBody ?? this.extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? this.extendBodyBehindAppBar,
      drawerScrimColor: drawerScrimColor ?? this.drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth ?? this.drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture ?? this.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture ?? this.endDrawerEnableOpenDragGesture,
      restorationId: restorationId ?? this.restorationId,
    );
  }
}
