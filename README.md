

# Oops

一个提供链式调用语法糖的Flutter库，用于减少嵌套层级和代码量。

## 特性

- 为Flutter组件提供链式调用API
- 使用copyWith模式确保属性完整继承
- 覆盖所有常用Material组件
- 支持第三方组件扩展
- 减少代码嵌套层级，提高代码可读性
- 简化UI构建过程

## 安装

在`pubspec.yaml`中添加依赖：

```yaml
dependencies:
  oops: ^0.1.0
```

然后运行：

```bash
flutter pub get
```

## 使用方法

### 基础用法

```dart
import 'package:flutter/material.dart';
import 'package:oops/oops.dart';

// 不使用Oops
Text(
  'Hello World',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  textAlign: TextAlign.center,
);

// 使用Oops
Text('Hello World')
    .$fontSize(20)
    .$bold()
    .$color(Colors.blue)
    .$align(TextAlign.center);
```

### 容器组件

```dart
// 不使用Oops
Container(
  width: 200,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(0, 3),
      ),
    ],
  ),
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.all(8),
  child: Center(
    child: Text(
      'Hello World',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    ),
  ),
);

// 使用Oops
Container()
    .$w(200)
    .$h(100)
    .$bgColor(Colors.red)
    .$radius(10)
    .$shadow()
    .$paddingAll(16)
    .$marginAll(8)
    .$child(
      Text('Hello World')
          .$fontSize(18)
          .$color(Colors.white)
          .$center()
    );
```

### 布局组件

```dart
// 不使用Oops
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Text('Item'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Action'),
    ),
  ],
);

// 使用Oops
Row()
    .$spaceBetween()
    .$children([
      Icon(Icons.star),
      Text('Item'),
      ElevatedButton(
        onPressed: () {},
        child: Text('Action'),
      ),
    ]);

// 或者使用$addChild方法
Row()
    .$spaceBetween()
    .$addChild(Icon(Icons.star))
    .$addChild(Text('Item'))
    .$addChild(
      ElevatedButton(
        onPressed: () {},
        child: Text('Action'),
      )
    );
```

### 按钮组件

```dart
// 不使用Oops
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  child: Text('Click Me'),
);

// 使用Oops
ElevatedButton(
  onPressed: () {},
  child: Text('Click Me'),
)
    .$backgroundColor(Colors.green)
    .$foregroundColor(Colors.white)
    .$padding(EdgeInsets.symmetric(horizontal: 24, vertical: 12))
    .$borderRadius(BorderRadius.circular(20));
```

### 方向性内外边距

```dart
// 使用方向性内边距
Container()
    .$pt(10)  // 上内边距
    .$pr(20)  // 右内边距
    .$pb(30)  // 下内边距
    .$pl(40)  // 左内边距
    .$px(16)  // 水平内边距
    .$py(8);  // 垂直内边距

// 使用方向性外边距
Container()
    .$mt(10)  // 上外边距
    .$mr(20)  // 右外边距
    .$mb(30)  // 下外边距
    .$ml(40)  // 左外边距
    .$mx(16)  // 水平外边距
    .$my(8);  // 垂直外边距
```

### 通用扩展方法

所有Widget都可以使用的通用扩展方法：

```dart
Text('Hello')
    .$padding(EdgeInsets.all(16))  // 添加内边距
    .$margin(EdgeInsets.all(8))    // 添加外边距
    .$center()                     // 居中
    .$onTap(() {})                 // 添加点击事件
    .$opacity(0.8)                 // 设置透明度
    .$rotate(0.1)                  // 旋转
    .$scale(1.2)                   // 缩放
    .$expanded()                   // 扩展填充
    .$flexible()                   // 灵活填充
    .$aspectRatio(16/9)            // 设置宽高比
    .$shadow();                    // 添加阴影
```

### 复杂组合示例

```dart
Container()
    .$bgColor(Colors.grey.shade100)
    .$marginAll(16)
    .$paddingAll(16)
    .$radius(12)
    .$child(
      Column()
          .$crossAxisAlignment(CrossAxisAlignment.start)
          .$children([
            Text('复杂组合示例')
                .$fontSize(20)
                .$bold()
                .$pb(16),
            
            Row()
                .$children([
                  Container()
                      .$w(100)
                      .$h(100)
                      .$bgColor(Colors.purple)
                      .$radius(8)
                      .$mr(16)
                      .$child(
                        Icon(Icons.image, color: Colors.white, size: 40)
                            .$center()
                      ),
                  
                  Expanded(
                    child: Column()
                        .$crossAxisAlignment(CrossAxisAlignment.start)
                        .$children([
                          Text('标题文本')
                              .$fontSize(18)
                              .$bold()
                              .$pb(8),
                          Text('这是一段描述文本，展示了如何使用Oops链式语法组合复杂的UI布局。')
                              .$pb(8),
                          Row()
                              .$spaceBetween()
                              .$children([
                                Text('2025-05-23')
                                    .$color(Colors.grey),
                                Icon(Icons.more_vert),
                              ]),
                        ]),
                  ),
                ]),
          ])
    );
```

### 第三方组件扩展

为第三方组件添加链式调用支持：

```dart
// 步骤1: 导入oops库
import 'package:oops/oops.dart';

// 步骤2: 为第三方组件创建扩展
extension MyWidgetExtension on MyWidget {
  // 添加链式方法
  MyWidget $withCustomProperty(String value) {
    // 如果第三方组件有copyWith方法，优先使用
    return copyWith(customProperty: value);
    
    // 或者创建新实例
    return MyWidget(
      // 复制原始widget的所有属性
      property1: this.property1,
      property2: this.property2,
      // 设置新属性
      customProperty: value,
    );
  }
}

// 步骤3: 如果无法直接扩展第三方组件，可以使用$extend()方法
extension MyWidgetExtension on Widget {
  Widget $withCustomProperty(String value) {
    return $extend().$apply((widget) {
      // 这里应该是实际的第三方组件API调用
      return SomeThirdPartyWidget.fromWidget(widget, customProperty: value);
    });
  }
}
```

## API文档

### 容器扩展

- `$w(double width)` - 设置宽度
- `$h(double height)` - 设置高度
- `$bgColor(Color color)` - 设置背景颜色
- `$radius(double radius)` - 设置圆角
- `$decoration(Decoration decoration)` - 设置装饰
- `$child(Widget child)` - 设置子组件
- `$padding(EdgeInsetsGeometry? p)` - 设置内边距
- `$paddingAll(double value)` - 设置所有方向内边距
- `$pt(double p)` - 设置顶部内边距
- `$pr(double p)` - 设置右边内边距
- `$pb(double p)` - 设置底部内边距
- `$pl(double p)` - 设置左边内边距
- `$margin(EdgeInsetsGeometry? m)` - 设置外边距
- `$marginAll(double value)` - 设置所有方向外边距
- `$mt(double m)` - 设置顶部外边距
- `$mr(double m)` - 设置右边外边距
- `$mb(double m)` - 设置底部外边距
- `$ml(double m)` - 设置左边外边距
- `$align(Alignment alignment)` - 设置对齐方式
- `$shadow()` - 添加阴影

### 文本扩展

- `$style(TextStyle style)` - 设置文本样式
- `$fontSize(double size)` - 设置字体大小
- `$color(Color color)` - 设置文本颜色
- `$fontWeight(FontWeight weight)` - 设置字体粗细
- `$bold()` - 设置为粗体
- `$italic()` - 设置为斜体
- `$fontFamily(String family)` - 设置字体
- `$letterSpacing(double spacing)` - 设置字母间距
- `$height(double height)` - 设置行高
- `$decoration(TextDecoration decoration)` - 设置文本装饰
- `$underline()` - 添加下划线
- `$lineThrough()` - 添加删除线
- `$overline()` - 添加上划线
- `$align(TextAlign align)` - 设置文本对齐方式
- `$maxLines(int? lines)` - 设置最大行数
- `$overflow(TextOverflow overflow)` - 设置文本溢出处理方式
- `$shadow()` - 添加文本阴影

### 布局扩展

- `$mainAxisAlignment(MainAxisAlignment alignment)` - 设置主轴对齐方式
- `$crossAxisAlignment(CrossAxisAlignment alignment)` - 设置交叉轴对齐方式
- `$mainAxisSize(MainAxisSize size)` - 设置主轴尺寸
- `$tight()` - 设置为紧凑型
- `$expanded()` - 设置为填充型
- `$centered()` - 设置为居中对齐
- `$spaceBetween()` - 设置为两端对齐
- `$spaceEvenly()` - 设置为均匀对齐
- `$spaceAround()` - 设置为均匀间隔
- `$start()` - 设置为起始对齐
- `$end()` - 设置为结束对齐
- `$addChild(Widget child)` - 添加子组件
- `$addChildren(List<Widget> newChildren)` - 添加多个子组件
- `$children(List<Widget> children)` - 设置子组件

### 按钮扩展

- `$style(ButtonStyle style)` - 设置按钮样式
- `$backgroundColor(Color color)` - 设置背景颜色
- `$foregroundColor(Color color)` - 设置前景颜色
- `$shadowColor(Color color)` - 设置阴影颜色
- `$elevation(double elevation)` - 设置高度
- `$padding(EdgeInsetsGeometry padding)` - 设置内边距
- `$borderRadius(BorderRadius borderRadius)` - 设置圆角
- `$circle()` - 设置为圆形
- `$borderColor(Color color)` - 设置边框颜色 (OutlinedButton)
- `$borderWidth(double width)` - 设置边框宽度 (OutlinedButton)

### 卡片扩展

- `$color(Color color)` - 设置颜色
- `$shadowColor(Color color)` - 设置阴影颜色
- `$elevation(double elevation)` - 设置高度
- `$shape(ShapeBorder shape)` - 设置形状
- `$borderRadius(BorderRadius radius)` - 设置圆角
- `$margin(EdgeInsetsGeometry margin)` - 设置外边距
- `$child(Widget child)` - 设置子组件

### 通用扩展

- `$padding(EdgeInsetsGeometry padding)` - 添加内边距
- `$pt(double padding)` - 添加上内边距
- `$pr(double padding)` - 添加右内边距
- `$pb(double padding)` - 添加下内边距
- `$pl(double padding)` - 添加左内边距
- `$px(double padding)` - 添加水平内边距
- `$py(double padding)` - 添加垂直内边距
- `$paddingAll(double padding)` - 添加所有方向内边距
- `$margin(EdgeInsetsGeometry margin)` - 添加外边距
- `$mt(double margin)` - 添加上外边距
- `$mr(double margin)` - 添加右外边距
- `$mb(double margin)` - 添加下外边距
- `$ml(double margin)` - 添加左外边距
- `$mx(double margin)` - 添加水平外边距
- `$my(double margin)` - 添加垂直外边距
- `$marginAll(double margin)` - 添加所有方向外边距
- `$center()` - 居中
- `$w(double width)` - 设置宽度
- `$h(double height)` - 设置高度
- `$size({double? width, double? height})` - 设置尺寸
- `$onTap(VoidCallback? onTap)` - 添加点击事件
- `$opacity(double opacity)` - 设置不透明度
- `$visibility({bool visible = true})` - 设置可见性
- `$rotate(double angle)` - 旋转
- `$scale(double scale)` - 缩放
- `$translate(Offset offset)` - 平移
- `$expanded({int flex = 1})` - 扩展填充
- `$flexible({int flex = 1, FlexFit fit = FlexFit.loose})` - 灵活填充
- `$constraints(BoxConstraints constraints)` - 添加约束
- `$maxWidth(double maxWidth)` - 设置最大宽度
- `$minWidth(double minWidth)` - 设置最小宽度
- `$maxHeight(double maxHeight)` - 设置最大高度
- `$minHeight(double minHeight)` - 设置最小高度
- `$aspectRatio(double aspectRatio)` - 设置宽高比
- `$shadow()` - 添加阴影
- `$cornerRadius(BorderRadius borderRadius)` - 添加圆角
- `$circle()` - 添加圆形裁剪
- `$align(Alignment alignment)` - 设置对齐方式

## 许可证

MIT
