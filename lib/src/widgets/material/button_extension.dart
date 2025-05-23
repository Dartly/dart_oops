import 'package:flutter/material.dart';

/// ElevatedButton组件的扩展
///
/// 为ElevatedButton组件提供链式调用API
extension ElevatedButtonExtension on ElevatedButton {
  /// 设置按钮样式
  ElevatedButton $style(ButtonStyle style) => copyWith(style: style);

  /// 设置按钮背景颜色
  ElevatedButton $backgroundColor(Color color) => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          backgroundColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮前景颜色
  ElevatedButton $foregroundColor(Color color) => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          foregroundColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮阴影颜色
  ElevatedButton $shadowColor(Color color) => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          shadowColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮高度
  ElevatedButton $elevation(double elevation) => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          elevation: MaterialStateProperty.all(elevation),
        ),
      );

  /// 设置按钮内边距
  ElevatedButton $padding(EdgeInsetsGeometry padding) => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          padding: MaterialStateProperty.all(padding),
        ),
      );

  /// 设置按钮圆角
  ElevatedButton $borderRadius(BorderRadius borderRadius) => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRadius),
          ),
        ),
      );

  /// 设置按钮为圆形
  ElevatedButton $circle() => copyWith(
        style: (style ?? ElevatedButton.styleFrom()).copyWith(
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
        ),
      );

  /// 复制当前ElevatedButton并应用新的属性
  ElevatedButton copyWith({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return ElevatedButton(
      key: key ?? this.key,
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child,
    );
  }
}

/// TextButton组件的扩展
///
/// 为TextButton组件提供链式调用API
extension TextButtonExtension on TextButton {
  /// 设置按钮样式
  TextButton $style(ButtonStyle style) => copyWith(style: style);

  /// 设置按钮背景颜色
  TextButton $backgroundColor(Color color) => copyWith(
        style: (style ?? TextButton.styleFrom()).copyWith(
          backgroundColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮前景颜色
  TextButton $foregroundColor(Color color) => copyWith(
        style: (style ?? TextButton.styleFrom()).copyWith(
          foregroundColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮内边距
  TextButton $padding(EdgeInsetsGeometry padding) => copyWith(
        style: (style ?? TextButton.styleFrom()).copyWith(
          padding: MaterialStateProperty.all(padding),
        ),
      );

  /// 设置按钮圆角
  TextButton $borderRadius(BorderRadius borderRadius) => copyWith(
        style: (style ?? TextButton.styleFrom()).copyWith(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRadius),
          ),
        ),
      );

  /// 复制当前TextButton并应用新的属性
  TextButton copyWith({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return TextButton(
      key: key ?? this.key,
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: (child ?? this.child) ?? SizedBox.shrink(),
    );
  }
}

/// OutlinedButton组件的扩展
///
/// 为OutlinedButton组件提供链式调用API
extension OutlinedButtonExtension on OutlinedButton {
  /// 设置按钮样式
  OutlinedButton $style(ButtonStyle style) => copyWith(style: style);

  /// 设置按钮背景颜色
  OutlinedButton $backgroundColor(Color color) => copyWith(
        style: (style ?? OutlinedButton.styleFrom()).copyWith(
          backgroundColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮前景颜色
  OutlinedButton $foregroundColor(Color color) => copyWith(
        style: (style ?? OutlinedButton.styleFrom()).copyWith(
          foregroundColor: MaterialStateProperty.all(color),
        ),
      );

  /// 设置按钮边框颜色
  OutlinedButton $borderColor(Color color) => copyWith(
        style: (style ?? OutlinedButton.styleFrom()).copyWith(
          side: MaterialStateProperty.all(
            BorderSide(color: color),
          ),
        ),
      );

  /// 设置按钮边框宽度
  OutlinedButton $borderWidth(double width) {
    final BorderSide? currentSide = style?.side?.resolve({});
    return copyWith(
      style: (style ?? OutlinedButton.styleFrom()).copyWith(
        side: MaterialStateProperty.all(
          BorderSide(
            color: currentSide?.color ?? Colors.black,
            width: width,
          ),
        ),
      ),
    );
  }

  /// 设置按钮内边距
  OutlinedButton $padding(EdgeInsetsGeometry padding) => copyWith(
        style: (style ?? OutlinedButton.styleFrom()).copyWith(
          padding: MaterialStateProperty.all(padding),
        ),
      );

  /// 设置按钮圆角
  OutlinedButton $borderRadius(BorderRadius borderRadius) => copyWith(
        style: (style ?? OutlinedButton.styleFrom()).copyWith(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRadius),
          ),
        ),
      );

  /// 复制当前OutlinedButton并应用新的属性
  OutlinedButton copyWith({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return OutlinedButton(
      key: key ?? this.key,
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      child: child ?? this.child,
    );
  }
}
