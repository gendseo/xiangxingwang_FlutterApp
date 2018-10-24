# 象行网 APP 目录

[English](https://github.com/gendseo/xiangxingwang_FlutterApp/blob/master/README.md) | 中文说明

象行网 APP 由 Flutter 框架构建，这个仓库是记录和收藏；  
App 目前版本(dev 0.0.1), 下一个版本(alpha 0.0.1), 依此类推；  
该 APP 分为三个部分: 设计, 编码和测试；  
另一部分可能是: 插件的使用和收集, 项目进度和计划, 以及一些混合的东西；  
当项目完成度达到60%, 我将使用 Google 的 GRPC 框架发布该 APP 的后端；  
使用的编程语言是 Go 和部分 Python 脚本构建自动化；  

## 设计

**基本单位: 页面 => 视图 => 控件**  
由于使用人群限制, 需要在布局和设计上做一些改变

- 使用底部导航栏显示个人中心和设置页面, 而不是左侧抽屉导航栏
- 采用底部悬浮按钮来存放重要功能，如发布信息
- 减少用户教育成本，将用户习惯的操作暴露在显眼的位置

**用户群体** `单位：岁`

- 目标: 16-23, 23-35, Other
- 最小目标: 12
- 最大目标: 55

**重要设计** `特性`

- 搜索功能
- 对比功能
- 评论点赞
- 分享至XXX
- 采用 Stack 方式堆叠新页面, 全局右滑可返回上一页
- 使用动画方式对加载、变化等用户视觉明显的地方重写

**基础功能** ``

- 图片浏览
- 视频播放
- 地图显示

**全屏轮播引导** ``

- 触发：第一次安装 APP，更新版本
- 作用：介绍新功能，展示特性

**半屏弹窗轮播引导** ``

- 触发：第一次使用 APP 部分功能，子页面对应功能
- 作用：更具体的操作教程，更精简的阅读指南，如：公告

**性能** `通常是优化`

- 优化首屏加载速度，避免白屏时间过长，可填充入 APP 欢迎页面，并初始化数据
- 请求网络数据时，应加载等待动画，避免长时间白屏，如过发生超时现象，反馈给用户并提示进行刷新或返回上一步等操作。GRPC 性能好得很，可能不会出现超时现象(;

**Demo 目录结构** `父类目录首字母大写并以s结尾，文件名和自定义 Widget 采用小驼峰，类名大驼峰`

``` md
.
|—— Assets
|—— Lib
|   |—— main.dart  // 入口，加载 myApp.dart
|   |—— Views  // 页面
|   |   |—— myApp.dart  // 主框架，控制主题和路由
|   |   |—— homePage.dart  // 主页
|   |   |—— commendPage.dart  // 推荐页
|   |   |—— popularPage.dart  // 热门页
|   |   |—— qaPage.dart  // 问答页
|   |   |—— topicPage.dart  // 话题页
|   |   |—— findPage.dart  // 发现页
|   |   `—— userPage.dart  // 个人和设置页
|   |—— Layouts  // 视图
|   |—— Utils  // 工具
|   |—— Services  // 服务
|   `—— Storages  // 本地存储
```

## 编码

## 测试

## 其他

### 使用

### 参考

[inKino](https://github.com/roughike/inKino) a showtime browser for Finnkino cinemas  
[FlutterScreens](https://github.com/samarthagarwal/FlutterScreens) 具有吸引人的用户界面的登录屏幕，按钮和加载器的集合  
[layout-demo-flutter](https://github.com/bizz84/layout-demo-flutter) 布局小例子  
[flukit](https://github.com/flutterchina/flukit) UI 工具例子  
<!-- []() -->
[Flutter-Notebook](https://github.com/OpenFlutter/Flutter-Notebook) 相关功能的集合 Demo
[transformer_page_view](https://github.com/best-flutter/transformer_page_view) 页面过渡
[FlutterPlayground](https://github.com/ibhavikmakwana/FlutterPlayground) FlutterPlayground  
[juejin](https://github.com/MeFelixWang/juejin) Flutter 仿掘金 APP  
[flutter_kaiyan](https://github.com/wtus/flutter_kaiyan) Flutter 仿开开眼 APP  
[flutter-tetris](https://github.com/yubo725/flutter-tetris) 俄罗斯方块小游戏  

### 插件

**请求**
[dio](https://github.com/flutterchina/dio)

**微信插件**  
[Fluwx](https://github.com/OpenFlutter/fluwx/blob/master/README_CN.md)

**图标**  
[FlutterIcon](https://github.com/ilikerobots/polyicon)
[groovin_material_icons](https://github.com/GroovinChip/groovin_material_icons)
[material_design_icons_flutter](https://github.com/ziofat/material_design_icons_flutter)

**加载动画**
[Spin kit](https://github.com/jogboms/flutter_spinkit) 一组加载指示器，使用 Flutter 动画

**轮播**
[flutter_swiper](https://github.com/best-flutter/flutter_swiper)

**存储**
[sqflite](https://github.com/tekartik/sqflite) SqLite

### 项目进度

2018/10/23：收集对应的功能需要的插件和做一些简易使用  
2018/10/24：画图，持续集成项目功能，搭建框架  

## 写在最后

如果您想获得更完整的项目计划书, 请与我联系并说明您的意图。

- **邮箱** aubo@gendseo.top