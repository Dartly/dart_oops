import 'package:flutter/material.dart';
import 'package:oops/oops.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oops Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('底部表单示例').$fontSize(18).$bold().$pb(16),
            Text('这是使用Oops链式语法创建的BottomSheet示例').$pb(16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('关闭'),
            ).$backgroundColor(Colors.blue).$foregroundColor(Colors.white)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oops Demo'),
      ).$actions([
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _showBottomSheet(context),
        )
      ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header').$color(Colors.white).$fontSize(24),
            ),
            ListTile(
              title: Text('首页'),
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
              onTap: () => Navigator.pop(context),
            ),
            Divider().$height(1).$thickness(1).$color(Colors.grey.shade300),
            ListTile(
              title: Text('关于'),
              leading: Icon(Icons.info),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ).$backgroundColor(Colors.white).$elevation(8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // 文本示例
            Text('简单文本示例')
                .$fontSize(24)
                .$bold()
                .$color(Colors.blue)
                .$center()
                .$paddingAll(16),

            // 容器示例
            Container()
                .$w(double.infinity)
                .$h(100)
                .$bgColor(Colors.amber)
                .$radius(12)
                .$shadow()
                .$paddingAll(16)
                .$marginAll(16)
                .$child(Text('Container示例')
                    .$fontSize(18)
                    .$color(Colors.white)
                    .$bold()
                    .$center()),

            // 方向性内外边距示例
            Container()
                .$bgColor(Colors.lightBlue)
                .$pt(20)
                .$pb(20)
                .$pl(30)
                .$pr(30)
                .$mt(10)
                .$mb(10)
                .$child(Text('方向性内外边距示例').$color(Colors.white).$center()),

            // 行布局示例
            Row().$spaceBetween().$children([
              Column().$children([
                Icon(Icons.star, color: Colors.amber, size: 40),
                Text('收藏').$pt(8),
              ]),
              Column().$children([
                Icon(Icons.thumb_up, color: Colors.blue, size: 40),
                Text('点赞').$pt(8),
              ]),
              Column().$children([
                Icon(Icons.share, color: Colors.green, size: 40),
                Text('分享').$pt(8),
              ]),
            ]).$paddingAll(16),

            // 按钮示例
            Row()
                .$children([
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('确认'),
                  )
                      .$backgroundColor(Colors.green)
                      .$foregroundColor(Colors.white)
                      .$padding(
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12))
                      .$borderRadius(BorderRadius.circular(24)),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('取消'),
                  )
                      .$borderColor(Colors.red)
                      .$foregroundColor(Colors.red)
                      .$padding(
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12))
                      .$borderRadius(BorderRadius.circular(24)),
                ])
                .$spaceEvenly()
                .$py(16),

            // 卡片示例
            Card()
                .$child(Column()
                    .$children([
                      Text('卡片标题').$fontSize(18).$bold().$pb(8),
                      Text('这是一个使用Oops链式语法创建的卡片示例，可以看到代码非常简洁易读。').$pb(16),
                      Row()
                          .$mainAxis(MainAxisAlignment.end)
                          .$children([
                        TextButton(
                          onPressed: () {},
                          child: Text('查看更多'),
                        ).$foregroundColor(Colors.blue),
                      ]),
                    ])
                    .$crossAxis(CrossAxisAlignment.start)
                    .$paddingAll(16))
                .$borderRadius(BorderRadius.circular(12))
                .$elevation(4)
                .$marginAll(16),

            // 复杂组合示例
            Container()
                .$bgColor(Colors.grey.shade100)
                .$marginAll(16)
                .$paddingAll(16)
                .$radius(12)
                .$child(Column()
                    .$crossAxis(CrossAxisAlignment.start)
                    .$children([
                  Text('复杂组合示例').$fontSize(20).$bold().$pb(16),
                  Row().$children([
                    Container()
                        .$w(100)
                        .$h(100)
                        .$bgColor(Colors.purple)
                        .$radius(8)
                        .$mr(16)
                        .$child(Icon(Icons.image, color: Colors.white, size: 40)
                            .$center()),
                    Expanded(
                      child: Column()
                          .$crossAxis(CrossAxisAlignment.start)
                          .$children([
                        Text('标题文本').$fontSize(18).$bold().$pb(8),
                        Text('这是一段描述文本，展示了如何使用Oops链式语法组合复杂的UI布局，减少嵌套层级，提高代码可读性。')
                            .$pb(8),
                        Row().$spaceBetween().$children([
                          Text('2025-05-23').$color(Colors.grey),
                          Icon(Icons.more_vert),
                        ]),
                      ]),
                    ),
                  ]),
                  Divider().$py(16),
                  Row().$spaceEvenly().$children([
                    Column().$children([
                      Icon(Icons.favorite, color: Colors.red),
                      Text('喜欢').$pt(4),
                    ]),
                    Column().$children([
                      Icon(Icons.comment, color: Colors.blue),
                      Text('评论').$pt(4),
                    ]),
                    Column().$children([
                      Icon(Icons.bookmark, color: Colors.orange),
                      Text('收藏').$pt(4),
                    ]),
                    Column().$children([
                      Icon(Icons.share, color: Colors.green),
                      Text('分享').$pt(4),
                    ]),
                  ]),
                ])),
            // 进度指示器示例
            Container()
                .$bgColor(Colors.grey.shade100)
                .$marginAll(16)
                .$paddingAll(16)
                .$radius(12)
                .$child(Column()
                    .$crossAxis(CrossAxisAlignment.start)
                    .$children([
                  Text('进度指示器示例').$fontSize(20).$bold().$pb(16),
                  Row().$spaceEvenly().$children([
                    Column().$children([
                      CircularProgressIndicator()
                          .$color(Colors.blue)
                          .$strokeWidth(5.0)
                          .$backgroundColor(Colors.grey.shade300),
                      Text('环形进度').$pt(8),
                    ]),
                    Column().$children([
                      CircularProgressIndicator(value: 0.7)
                          .$color(Colors.green)
                          .$strokeWidth(5.0)
                          .$backgroundColor(Colors.grey.shade300),
                      Text('确定进度').$pt(8),
                    ]),
                  ]).$pb(16),
                  LinearProgressIndicator()
                      .$color(Colors.orange)
                      .$backgroundColor(Colors.grey.shade300)
                      .$minHeight(10.0),
                  SizedBox(height: 16),
                  LinearProgressIndicator(value: 0.5)
                      .$color(Colors.purple)
                      .$backgroundColor(Colors.grey.shade300)
                      .$minHeight(10.0),
                ])),

            // 分隔线示例
            Container()
                .$bgColor(Colors.grey.shade100)
                .$marginAll(16)
                .$paddingAll(16)
                .$radius(12)
                .$child(Column()
                    .$crossAxis(CrossAxisAlignment.start)
                    .$children([
                  Text('分隔线示例').$fontSize(20).$bold().$pb(16),
                  Text('水平分隔线').$pb(8),
                  Divider().$thickness(2).$color(Colors.blue),
                  Text('带缩进的分隔线').$py(8),
                  Divider()
                      .$thickness(2)
                      .$color(Colors.red)
                      .$indent(32)
                      .$endIndent(32),
                  Text('垂直分隔线').$py(8),
                  Container().$h(100).$child(Row()
                          .$mainAxis(MainAxisAlignment.spaceEvenly)
                          .$children([
                        Text('左侧内容'),
                        // VerticalDivider()
                        //     .$thickness(2)
                        //     .$color(Colors.green)
                        //     .$width(20),
                        Text('右侧内容'),
                      ])),
                ])),
          ],
        ),
      ),
    );
  }
}
