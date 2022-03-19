# Unwarp-UV2-Script

刚学unity时，做的一个关于UV#2上AO效果的时候用的小玩具，因为我需要在UV#2上放一个AO，但一般的模型UV#2是乱的，美工大多数时间只在UV#1上操作。

所以便搓了一个一键展UV#2工具，调用的max自带Unwarp UV API，展UV算法我也不会写，毕竟在UV#2上，AO和烘焙灯光这东西的瑕疵基本看不出来。

然而，后来我发现unity导入fbx有个选项“Generate Lightmap UVs”，在烘焙static物体时，Unity自动给你展了2UV，得到的结果和其他DCC软件离线烘焙的也差不多。

所以这玩具就再也没用了，属于是早期闭门造车的东西。╮(￣▽￣")╭

食用方法：选择你要展UV#2的模型，塌陷为EditPoly，直接点Start，结束。

可能的BUG：点了一次模型后点Start没反应，此时需要再按一次Start。

附赠一个Unity 5.2.5 的Shader，下面演示图片便是用的这个Shader

![image](https://github.com/DaiZiLing/Unwarp-UV2-Script/blob/main/Images/0319_1.gif)

![image](https://github.com/DaiZiLing/Unwarp-UV2-Script/blob/main/Images/0319_3.png)

# How To Use

1.我在UV#2上贴了一个Checker，打开Unwarp UV后可以看到默认的是一个投影UV
2.点击运行脚本
3.重新打开Unwarp UV，并观察贴图通道 2 ，这个通道的UV已经被展开了（草，虽然效果稀烂但起码能放Lightmap）

![image](https://github.com/DaiZiLing/Unwarp-UV2-Script/blob/main/Images/0317_2.gif)
