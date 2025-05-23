import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// TextField组件的扩展
/// 
/// 为TextField组件提供链式调用API
extension TextFieldExtension on TextField {
  /// 设置控制器
  TextField $controller(TextEditingController? controller) => 
      copyWith(controller: controller);
  
  /// 设置焦点节点
  TextField $focusNode(FocusNode? focusNode) => 
      copyWith(focusNode: focusNode);
  
  /// 设置装饰
  TextField $decoration(InputDecoration? decoration) => 
      copyWith(decoration: decoration);
  
  /// 设置键盘类型
  TextField $keyboardType(TextInputType? keyboardType) => 
      copyWith(keyboardType: keyboardType);
  
  /// 设置文本输入动作
  TextField $textInputAction(TextInputAction? textInputAction) => 
      copyWith(textInputAction: textInputAction);
  
  /// 设置文本样式
  TextField $style(TextStyle? style) => copyWith(style: style);
  
  /// 设置文本对齐方式
  TextField $textAlign(TextAlign textAlign) => copyWith(textAlign: textAlign);
  
  /// 设置文本方向
  TextField $textDirection(TextDirection? textDirection) => 
      copyWith(textDirection: textDirection);
  
  /// 设置自动聚焦
  TextField $autofocus(bool autofocus) => copyWith(autofocus: autofocus);
  
  /// 设置是否隐藏文本
  TextField $obscureText(bool obscureText) => copyWith(obscureText: obscureText);
  
  /// 设置自动校正
  TextField $autocorrect(bool autocorrect) => copyWith(autocorrect: autocorrect);
  
  /// 设置启用建议
  TextField $enableSuggestions(bool enableSuggestions) => 
      copyWith(enableSuggestions: enableSuggestions);
  
  /// 设置最大行数
  TextField $maxLines(int? maxLines) => copyWith(maxLines: maxLines);
  
  /// 设置最小行数
  TextField $minLines(int? minLines) => copyWith(minLines: minLines);
  
  /// 设置是否可扩展
  TextField $expands(bool expands) => copyWith(expands: expands);
  
  /// 设置只读
  TextField $readOnly(bool readOnly) => copyWith(readOnly: readOnly);
  
  /// 设置工具提示
  TextField $toolbarOptions(ToolbarOptions? toolbarOptions) => 
      copyWith(toolbarOptions: toolbarOptions);
  
  /// 设置显示光标
  TextField $showCursor(bool? showCursor) => copyWith(showCursor: showCursor);
  
  /// 设置最大长度
  TextField $maxLength(int? maxLength) => copyWith(maxLength: maxLength);
  
  /// 设置最大长度强制执行
  TextField $maxLengthEnforcement(MaxLengthEnforcement? maxLengthEnforcement) => 
      copyWith(maxLengthEnforcement: maxLengthEnforcement);
  
  /// 设置是否启用
  TextField $enabled(bool? enabled) => copyWith(enabled: enabled);
  
  /// 设置光标宽度
  TextField $cursorWidth(double cursorWidth) => 
      copyWith(cursorWidth: cursorWidth);
  
  /// 设置光标高度
  TextField $cursorHeight(double? cursorHeight) => 
      copyWith(cursorHeight: cursorHeight);
  
  /// 设置光标半径
  TextField $cursorRadius(Radius? cursorRadius) => 
      copyWith(cursorRadius: cursorRadius);
  
  /// 设置光标颜色
  TextField $cursorColor(Color? cursorColor) => 
      copyWith(cursorColor: cursorColor);
  
  /// 设置键盘外观
  TextField $keyboardAppearance(Brightness? keyboardAppearance) => 
      copyWith(keyboardAppearance: keyboardAppearance);
  
  /// 设置滚动填充
  TextField $scrollPadding(EdgeInsets scrollPadding) => 
      copyWith(scrollPadding: scrollPadding);
  
  /// 设置是否启用交互式选择
  TextField $enableInteractiveSelection(bool enableInteractiveSelection) => 
      copyWith(enableInteractiveSelection: enableInteractiveSelection);
  
  /// 设置自动验证模式
  TextField $autovalidateMode(AutovalidateMode? autovalidateMode) => 
      copyWith(autovalidateMode: autovalidateMode);
  
  /// 设置提示文本
  TextField $hintText(String hint) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        hintText: hint,
      ));
  
  /// 设置标签文本
  TextField $labelText(String label) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        labelText: label,
      ));
  
  /// 设置错误文本
  TextField $errorText(String? error) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        errorText: error,
      ));
  
  /// 设置前缀图标
  TextField $prefixIcon(Widget? icon) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        prefixIcon: icon,
      ));
  
  /// 设置后缀图标
  TextField $suffixIcon(Widget? icon) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        suffixIcon: icon,
      ));
  
  /// 设置边框
  TextField $border(InputBorder? border) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        border: border,
      ));
  
  /// 设置填充颜色
  TextField $fillColor(Color? color) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        fillColor: color,
      ));
  
  /// 设置是否填充
  TextField $filled(bool filled) => 
      copyWith(decoration: (decoration ?? const InputDecoration()).copyWith(
        filled: filled,
      ));
  
  /// 复制当前TextField并应用新的属性
  TextField copyWith({
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    bool? autofocus,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    MaxLengthEnforcement? maxLengthEnforcement,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    ScrollController? scrollController,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    MouseCursor? mouseCursor,
  }) {
    return TextField(
      key: key ?? this.key,
      controller: controller ?? this.controller,
      focusNode: focusNode ?? this.focusNode,
      decoration: decoration ?? this.decoration,
      keyboardType: keyboardType ?? this.keyboardType,
      textInputAction: textInputAction ?? this.textInputAction,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      textDirection: textDirection ?? this.textDirection,
      readOnly: readOnly ?? this.readOnly,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      showCursor: showCursor ?? this.showCursor,
      autofocus: autofocus ?? this.autofocus,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      obscureText: obscureText ?? this.obscureText,
      autocorrect: autocorrect ?? this.autocorrect,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
      maxLength: maxLength ?? this.maxLength,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      onChanged: onChanged ?? this.onChanged,
      onEditingComplete: onEditingComplete ?? this.onEditingComplete,
      onSubmitted: onSubmitted ?? this.onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand ?? this.onAppPrivateCommand,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      enabled: enabled ?? this.enabled,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      cursorColor: cursorColor ?? this.cursorColor,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      enableInteractiveSelection: enableInteractiveSelection ?? this.enableInteractiveSelection,
      selectionControls: selectionControls ?? this.selectionControls,
      scrollController: scrollController ?? this.scrollController,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      autofillHints: autofillHints ?? this.autofillHints,
      restorationId: restorationId ?? this.restorationId,
      enableIMEPersonalizedLearning: enableIMEPersonalizedLearning ?? this.enableIMEPersonalizedLearning,
      mouseCursor: mouseCursor ?? this.mouseCursor,
    );
  }
}
