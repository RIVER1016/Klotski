# Klotski
Classical Chinese Puzzles
### UI Design：

- Flutter语言本身是以多个widget嵌套成的UI框架;
- 我这里使用的是简单的画幅，把每一个widget固定到它想要的位置;

- 这里的每一个Widget都是statefulWidget，也就是说可以操作的widget;
- 1X2、2X1、2X2格子由多个小widget组成，
- 为了方便widget的逻辑移动，我在本身棋盘的外围加了一层名为-1的小widget
<img src="https://user-images.githubusercontent.com/37433487/59200512-0204c600-8bcb-11e9-87c7-ef405f9e8374.gif" width="200px"  />
演示视频地址:https://www.dropbox.com/s/rzj4xik1218j1wd/short_1.mp4?dl=0

### UE Design：

- 使用GestureDetector监测statefulWidget的用户操作

- 使用的是flutter的onVerticalDragUpdate和onHorizontalDragUpdate 		 API
- 通过detail.delta.direction 参数获得用户拖动的方向
- 根据用户点击的方块规格，进入全局改变的棋盘比较，是否可以移动

### IxD Design:

- 任何一个方块都是可点击，仅有一个新游戏按钮，界面极简



## Backend Design and Implementation

1. Game strategy：
   - 游戏的最终目的是将3也就是2x2的格子”曹操”移动到底部中间，则认为通关
   - 我通过动态的给Widget进行setState实现移动的效果

2. Service architecture：
   - 由于网络教程有限，没能成功的实现

3. Logical algorithm：
   - 如UI设计图中，简单的来说就是根据widget的类型、左上角坐标（x,y）
   - 然后，遍历它上下左右是不是有白块0，且白块的数量足不足够让它移动；
   - 这里为了方便起见，我自定义了一个函数
   - 然后通过函数setState();直接动态改变白块和移动块；

```dart
void isPositionAvailable（List<List<int>> board,int type,int left,int top）;
```

在这里board就是一个数字组成的多维数组画幅，type是所判断的cell的类型，left，top分别代表x，y。

4. Data Storage：
   - 因为有没有后端，所以所有的获胜、计步数据都是直接清空置零的；
   - 块移动的数据由全局数字画幅和全局widget画幅两个List
