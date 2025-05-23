import 'package:flutter/material.dart';

/// Text组件的扩展
/// 
/// 为Text组件提供链式调用API
extension TextExtension on Text {
  /// 设置文本样式
  Text $style(TextStyle style) => copyWith(style: style);
  
  /// 设置文本颜色
  Text $color(Color color) => copyWith(
    style: (style ?? const TextStyle()).copyWith(color: color),
  );
  
  /// 设置文本字体大小
  Text $fontSize(double size) => copyWith(
    style: (style ?? const TextStyle()).copyWith(fontSize: size),
  );
  
  /// 设置文本字体粗细
  Text $fontWeight(FontWeight weight) => copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: weight),
  );
  
  /// 设置文本为粗体
  Text $bold() => $fontWeight(FontWeight.bold);
  
  /// 设置文本为斜体
  Text $italic() => copyWith(
    style: (style ?? const TextStyle()).copyWith(fontStyle: FontStyle.italic),
  );
  
  /// 设置文本字体
  Text $fontFamily(String family) => copyWith(
    style: (style ?? const TextStyle()).copyWith(fontFamily: family),
  );
  
  /// 设置文本字母间距
  Text $letterSpacing(double spacing) => copyWith(
    style: (style ?? const TextStyle()).copyWith(letterSpacing: spacing),
  );
  
  /// 设置文本行高
  Text $height(double height) => copyWith(
    style: (style ?? const TextStyle()).copyWith(height: height),
  );
  
  /// 设置文本装饰
  Text $decoration(TextDecoration decoration) => copyWith(
    style: (style ?? const TextStyle()).copyWith(decoration: decoration),
  );
  
  /// 设置文本为下划线
  Text $underline() => $decoration(TextDecoration.underline);
  
  /// 设置文本为删除线
  Text $lineThrough() => $decoration(TextDecoration.lineThrough);
  
  /// 设置文本为上划线
  Text $overline() => $decoration(TextDecoration.overline);
  
  /// 设置文本对齐方式
  Text $align(TextAlign align) => copyWith(textAlign: align);
  
  /// 设置文本最大行数
  Text $maxLines(int? lines) => copyWith(maxLines: lines);
  
  /// 设置文本溢出处理方式
  Text $overflow(TextOverflow overflow) => copyWith(overflow: overflow);
  
  /// 设置文本阴影
  Text $shadow({
    Color color = Colors.black26,
    Offset offset = const Offset(2, 2),
    double blurRadius = 3.0,
  }) => copyWith(
    style: (style ?? const TextStyle()).copyWith(
      shadows: [
        Shadow(
          color: color,
          offset: offset,
          blurRadius: blurRadius,
        ),
      ],
    ),
  );
  
  /// 复制当前Text并应用新的属性
  Text copyWith({
    String? data,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    Key? key,
  }) {
    return Text(
      data ?? this.data ?? '',
      key: key ?? this.key,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      selectionColor: selectionColor ?? this.selectionColor,
    );
  }
}
