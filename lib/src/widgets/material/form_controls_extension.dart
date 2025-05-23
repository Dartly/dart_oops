import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Checkbox组件的扩展
/// 
/// 为Checkbox组件提供链式调用API
extension CheckboxExtension on Checkbox {
  /// 设置值
  Checkbox $value(bool? value) => copyWith(value: value);
  
  /// 设置选中时的颜色
  Checkbox $activeColor(Color? activeColor) => copyWith(activeColor: activeColor);
  
  /// 设置填充颜色
  Checkbox $fillColor(MaterialStateProperty<Color?>? fillColor) => 
      copyWith(fillColor: fillColor);
  
  /// 设置检查颜色
  Checkbox $checkColor(Color? checkColor) => copyWith(checkColor: checkColor);
  
  /// 设置焦点颜色
  Checkbox $focusColor(Color? focusColor) => copyWith(focusColor: focusColor);
  
  /// 设置悬停颜色
  Checkbox $hoverColor(Color? hoverColor) => copyWith(hoverColor: hoverColor);
  
  /// 设置是否自动聚焦
  Checkbox $autofocus(bool autofocus) => copyWith(autofocus: autofocus);
  
  /// 设置是否三态
  Checkbox $tristate(bool tristate) => copyWith(tristate: tristate);
  
  /// 设置形状
  Checkbox $shape(OutlinedBorder? shape) => copyWith(shape: shape);
  
  /// 设置边框宽度
  Checkbox $side(BorderSide? side) => copyWith(side: side);
  
  /// 设置是否启用
  Checkbox $enabled(bool? enabled) => copyWith(isEnabled: enabled);
  
  /// 复制当前Checkbox并应用新的属性
  Checkbox copyWith({
    bool? value,
    ValueChanged<bool?>? onChanged,
    MouseCursor? mouseCursor,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? checkColor,
    Color? focusColor,
    Color? hoverColor,
    MaterialTapTargetSize? materialTapTargetSize,
    VisualDensity? visualDensity,
    bool? autofocus,
    OutlinedBorder? shape,
    BorderSide? side,
    bool? isEnabled,
    bool? tristate,
  }) {
    return Checkbox(
      key: key,
      value: value ?? this.value,
      onChanged: onChanged ?? this.onChanged,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      activeColor: activeColor ?? this.activeColor,
      fillColor: fillColor ?? this.fillColor,
      checkColor: checkColor ?? this.checkColor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      materialTapTargetSize: materialTapTargetSize ?? this.materialTapTargetSize,
      visualDensity: visualDensity ?? this.visualDensity,
      autofocus: autofocus ?? this.autofocus,
      shape: shape ?? this.shape,
      side: side ?? this.side,
      isError: this.isError,
      tristate: tristate ?? this.tristate,
    );
  }
}

/// Switch组件的扩展
/// 
/// 为Switch组件提供链式调用API
extension SwitchExtension on Switch {
  /// 设置值
  Switch $value(bool value) => copyWith(value: value);
  
  /// 设置活动轨道颜色
  Switch $activeTrackColor(Color? activeTrackColor) => 
      copyWith(activeTrackColor: activeTrackColor);
  
  /// 设置活动拇指颜色
  Switch $activeColor(Color? activeColor) => copyWith(activeColor: activeColor);
  
  /// 设置非活动轨道颜色
  Switch $inactiveTrackColor(Color? inactiveTrackColor) => 
      copyWith(inactiveTrackColor: inactiveTrackColor);
  
  /// 设置非活动拇指颜色
  Switch $inactiveThumbColor(Color? inactiveThumbColor) => 
      copyWith(inactiveThumbColor: inactiveThumbColor);
  
  /// 设置焦点颜色
  Switch $focusColor(Color? focusColor) => copyWith(focusColor: focusColor);
  
  /// 设置悬停颜色
  Switch $hoverColor(Color? hoverColor) => copyWith(hoverColor: hoverColor);
  
  /// 设置是否自动聚焦
  Switch $autofocus(bool autofocus) => copyWith(autofocus: autofocus);
  
  /// 设置拇指颜色
  Switch $thumbColor(MaterialStateProperty<Color?>? thumbColor) => 
      copyWith(thumbColor: thumbColor);
  
  /// 设置轨道颜色
  Switch $trackColor(MaterialStateProperty<Color?>? trackColor) => 
      copyWith(trackColor: trackColor);
  

  /// 设置是否启用
  Switch $enabled(bool? enabled) => copyWith(isEnabled: enabled);
  
  /// 复制当前Switch并应用新的属性
  Switch copyWith({
    bool? value,
    ValueChanged<bool>? onChanged,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
    ImageProvider<Object>? activeThumbImage,
    ImageErrorListener? onActiveThumbImageError,
    ImageProvider<Object>? inactiveThumbImage,
    ImageErrorListener? onInactiveThumbImageError,
    MaterialTapTargetSize? materialTapTargetSize,
    DragStartBehavior? dragStartBehavior,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    bool? autofocus,
    MaterialStateProperty<Color?>? thumbColor,
    MaterialStateProperty<Color?>? trackColor,
    MaterialStateProperty<Icon?>? thumbIcon,
    MaterialStateProperty<Color?>? trackOutlineColor,
    MaterialStateProperty<double?>? trackOutlineWidth,
    MaterialStateProperty<ImageProvider<Object>?>? thumbImage,
    bool? isEnabled,
  }) {
    return Switch(
      key: key,
      value: value ?? this.value,
      onChanged: onChanged ?? this.onChanged,
      activeColor: activeColor ?? this.activeColor,
      activeTrackColor: activeTrackColor ?? this.activeTrackColor,
      inactiveThumbColor: inactiveThumbColor ?? this.inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor ?? this.inactiveTrackColor,
      activeThumbImage: activeThumbImage ?? this.activeThumbImage,
      onActiveThumbImageError: onActiveThumbImageError ?? this.onActiveThumbImageError,
      inactiveThumbImage: inactiveThumbImage ?? this.inactiveThumbImage,
      onInactiveThumbImageError: onInactiveThumbImageError ?? this.onInactiveThumbImageError,
      materialTapTargetSize: materialTapTargetSize ?? this.materialTapTargetSize,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      overlayColor: overlayColor ?? this.overlayColor,
      splashRadius: splashRadius ?? this.splashRadius,
      autofocus: autofocus ?? this.autofocus,
      thumbColor: thumbColor ?? this.thumbColor,
      trackColor: trackColor ?? this.trackColor,
      thumbIcon: thumbIcon ?? this.thumbIcon,
      trackOutlineColor: trackOutlineColor ?? this.trackOutlineColor,
      trackOutlineWidth: trackOutlineWidth ?? this.trackOutlineWidth,
    );
  }
}

/// Radio组件的扩展
/// 
/// 为Radio组件提供链式调用API
extension RadioExtension<T> on Radio<T> {
  /// 设置值
  Radio<T> $value(T value) => copyWith(value: value);
  
  /// 设置分组值
  Radio<T> $groupValue(T? groupValue) => copyWith(groupValue: groupValue);
  
  /// 设置活动颜色
  Radio<T> $activeColor(Color? activeColor) => copyWith(activeColor: activeColor);
  
  /// 设置填充颜色
  Radio<T> $fillColor(MaterialStateProperty<Color?>? fillColor) => 
      copyWith(fillColor: fillColor);
  
  /// 设置焦点颜色
  Radio<T> $focusColor(Color? focusColor) => copyWith(focusColor: focusColor);
  
  /// 设置悬停颜色
  Radio<T> $hoverColor(Color? hoverColor) => copyWith(hoverColor: hoverColor);
  
  /// 设置是否自动聚焦
  Radio<T> $autofocus(bool autofocus) => copyWith(autofocus: autofocus);
  
  /// 设置是否启用
  Radio<T> $enabled(bool? enabled) => copyWith(isEnabled: enabled);
  
  /// 复制当前Radio并应用新的属性
  Radio<T> copyWith({
    T? value,
    T? groupValue,
    ValueChanged<T?>? onChanged,
    MouseCursor? mouseCursor,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? focusColor,
    Color? hoverColor,
    MaterialTapTargetSize? materialTapTargetSize,
    VisualDensity? visualDensity,
    bool? autofocus,
    bool? isEnabled,
  }) {
    return Radio<T>(
      key: key,
      value: value ?? this.value,
      groupValue: groupValue ?? this.groupValue,
      onChanged: onChanged ?? this.onChanged,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      activeColor: activeColor ?? this.activeColor,
      fillColor: fillColor ?? this.fillColor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      materialTapTargetSize: materialTapTargetSize ?? this.materialTapTargetSize,
      visualDensity: visualDensity ?? this.visualDensity,
      autofocus: autofocus ?? this.autofocus,
      toggleable: this.toggleable,
    );
  }
}

/// Slider组件的扩展
/// 
/// 为Slider组件提供链式调用API
extension SliderExtension on Slider {
  /// 设置值
  Slider $value(double value) => copyWith(value: value);
  
  /// 设置最小值
  Slider $min(double min) => copyWith(min: min);
  
  /// 设置最大值
  Slider $max(double max) => copyWith(max: max);
  
  /// 设置活动颜色
  Slider $activeColor(Color? activeColor) => copyWith(activeColor: activeColor);
  
  /// 设置非活动颜色
  Slider $inactiveColor(Color? inactiveColor) => 
      copyWith(inactiveColor: inactiveColor);
  
  /// 设置拇指颜色
  Slider $thumbColor(Color? thumbColor) => copyWith(thumbColor: thumbColor);
  
  /// 设置分割数
  Slider $divisions(int? divisions) => copyWith(divisions: divisions);
  
  /// 设置标签
  Slider $label(String? label) => copyWith(label: label);
  
  /// 设置是否自动聚焦
  Slider $autofocus(bool autofocus) => copyWith(autofocus: autofocus);
  
  /// 复制当前Slider并应用新的属性
  Slider copyWith({
    double? value,
    ValueChanged<double>? onChanged,
    ValueChanged<double>? onChangeStart,
    ValueChanged<double>? onChangeEnd,
    double? min,
    double? max,
    int? divisions,
    String? label,
    Color? activeColor,
    Color? inactiveColor,
    Color? thumbColor,
    MouseCursor? mouseCursor,
    SemanticFormatterCallback? semanticFormatterCallback,
    FocusNode? focusNode,
    bool? autofocus,
  }) {
    return Slider(
      key: key,
      value: value ?? this.value,
      onChanged: onChanged ?? this.onChanged,
      onChangeStart: onChangeStart ?? this.onChangeStart,
      onChangeEnd: onChangeEnd ?? this.onChangeEnd,
      min: min ?? this.min,
      max: max ?? this.max,
      divisions: divisions ?? this.divisions,
      label: label ?? this.label,
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      thumbColor: thumbColor ?? this.thumbColor,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      semanticFormatterCallback: semanticFormatterCallback ?? this.semanticFormatterCallback,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
    );
  }
}
