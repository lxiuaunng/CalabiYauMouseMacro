# CalabiYauMouseMacro
卡拉彼丘自制鼠标宏

**<font color='red'>注意：此脚本只适用于电子段位以下的fps纯小白使用，可以让你们不至于被队友骂。但如果你已经是电子或夸克段位，那请不要使用，只会影响你们的拉枪能力，因为这个脚本的控枪数据是作者用了一个下午手写的，实测很垃圾，还不如背弹道手拉。而且若你们还想成为fps高手，那请离这种歪门邪道的脚本远一点，不要因为一时的失败就自甘堕落，勤加练习、提升自己水平才是正确的选择！</font>**

使用前提：鼠标支持LUA脚本（罗技）。

使用方法：
1. 安装鼠标驱动（Logitecg G HUB）。
2. 关闭板载内存模式。
3. 点击右上角的 `三`，打开`游戏与应用程序`，点击`添加游戏或应用程序`，进入游戏根目录，找到 `CalabiyauGame\PM\Binaries\Win64\` 这个路径下的 `Calabiyau-Win64-Shipping.exe` 程序。这个程序才是游戏本体的进程，根目录下的 `CalabiYau.exe` 只是个启动器而已。
5. 还是在`游戏与应用程序`这个页面，下面有个`配置文件`和一张游戏logo的图片，在这个logo图片下有个`编写脚本`的按钮
6. 进入`编写脚本`的页面后添加一个新脚本，并将[这个脚本](https://github.com/lxiuaunng/CalabiYauMouseMacro/blob/main/CalabiYauMouseMacro.lua)里的代码复制进去即可。
7. 还是`编写脚本`的页面，点击`浏览`下的`控制台`可以查看脚本运行状态

灵敏度：
- 鼠标本体dpi：（无所谓，不影响）
- 游戏内：
	- 鼠标灵敏度：5
	- 垂直灵敏度倍率：2(拉满)
	- 肩射灵敏度倍率：1.2
	- 轻型武器开镜灵敏度倍率：1.2
以上灵敏度较为适用脚本，如有不适，可自行更改，但是脚本的数据也要自行更改。（改起来很简单，强烈建议自己去靶场试！然后修改为适应自己灵敏度的数据，这个过程也能增加你对角色弹道的理解。）

---

如果你想知道这些数字分别代表鼠标的哪些键，请搜索 `OutputLogMessage("event = %s, arg = %d\n", event, arg)`，并删除前面的`--`，使其运行，如果你不是罗技鼠标也可以自行更改键位。  
代码中的 `OutputLogMessage` 也都可以试着打开，增加对代码的理解，相信你可以写的比作者更好。

- 8：切换下一个角色。（鼠标滑轮向右推）
- 7：切换上一个角色。（鼠标滑轮向左推）
- 6：按下打开肩射状态，松开关闭，建议游戏内把肩射改为此键。（手掌虎口偏前的键）
- 2：按下打开开镜状态，松开关闭。（鼠标右键）
- 5：换弹（但不是真的换弹，只是为了让脚本知道已经换弹了，重置一下脚本记录的子弹数，和'R'键同步按就行，或者干脆**把换弹键绑定到这个键**上也行）（dpi键，就放在大拇指上，比较不容易按到）
- 4：关闭脚本。（手掌虎口偏后的键，比较不容易按到）
- 例子：[Xjming、Ykming]
  - X和Y为每发子弹移动的像素数组，正方向分别为向右和向下。
  - j和k为肩射和开镜两种状态，没有腰射（作者很懒对不起）。
  - ming是角色拼音，也是代码中角色对应的对象。
  - 对应角色有：[ming、lawei、shamao、feisha、xinghui、xiong、hudie、maomao]，可自由更改，不要改成中文哦。
	  - "明", "拉微", "沙猫", "绯莎", "星绘", "小熊", "蝴蝶", "猫猫"

---

ps：说实话，刚开始很感兴趣，想写成那种30米拉成一个点的那种脚本，可惜能力、精力有限，不过能用就行啦，要是真写成那种，只会让小白们提升到不适合自己的段位，折磨自己也折磨队友，所以就这样吧。（说服自己）
