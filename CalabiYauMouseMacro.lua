local jueseId = 0
--角色id，使用鼠标8键后加1，切换为下一个角色

juese = {"明", "拉微", "沙猫", "绯莎", "星绘", "小熊", "蝴蝶", "猫猫", "艾卡"}
--角色名字
zidan = {0,40,0,40,30,0,25,0}
--角色对应子弹数，暂时没用，对应的功能还没写呢，不过不影响使用，有默认的子弹数[capacity]。

local Xjming = {1,2,1,2,1,2,1,2,1,2,1,0,0,0,0,0,-1,-2,-1,-2,-1,-2,1,1,1,1,1,1,1,1,1,1,1,1,1}
local Yjming = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
----明肩射的控枪数据
local Xkming = {1,2,1,2,1,2,1,2,1,2,1,0,0,0,0,0,-1,-2,-1,-2,-1,-2,1,1,1,1,1,1,1,1,1,1,1,1,1}
local Ykming = {1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}
----明开镜的控枪数据

local Xjlawei = {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
local Yjlawei = {1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1}
----拉微肩射的控枪数据
local Xklawei = {-1,-2,-1,-2,-1,-2,-1,-2,-1,-2,-1,-2,-1,-2,-1,-1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
local Yklawei = {1,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,3,3,3,2,2,2,2,2,2,2,2,2,2}
----拉微开镜的控枪数据
--local Xklawei = {-1,-2,-1,-2,-1,-2,-1,-2,-1,-2,-1,-2,-1,-2,-1,-1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
--local Yklawei = {1,2,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3}
----拉微开镜的控枪数据

local Xjshamao = {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,-1,0-1,-1,0,-1,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0}
local Yjshamao = {1,2,3,2,3,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}
----沙猫肩射的控枪数据
local Xkshamao = {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,-1,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0}
local Ykshamao = {1,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3}
----沙猫开镜的控枪数据
--local Xkshamao = {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,-1,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0,-1,-1,0}
--local Ykshamao = {2,3,3,4,4,4,5,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,2,3,2,2}
----沙猫开镜的控枪数据

local Xjfeisha = {-1,0,-1,0,-1,0,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1}
local Yjfeisha = {1,2,2,2,2,2,2,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2}
----绯莎肩射的控枪数据
local Xkfeisha = {-1,0,-1,0,-1,0,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1,-1,-1,-2,-1}
local Ykfeisha = {1,2,3,3,3,2,3,3,3,2,3,3,3,2,3,3,3,2,3,3,3,2,3,3,3,2,3,3,3,2,3,3,3,2,3}
----绯莎开镜的控枪数据

local Xjxinghui = {1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,0,0,0,0,0,0,0,0,1,0}
local Yjxinghui = {1,2,2,2,2,2,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2,2,1,2}
----星绘肩射的控枪数据
local Xkxinghui = {1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1}
local Ykxinghui = {1,2,3,2,3,2,3,2,3,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}
----星绘开镜的控枪数据

local Xjxiong = {1,0,1,0,1,0,0,1,1,1,2,1,1,1,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
local Yjxiong = {1,1,2,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,1,1}
----小熊肩射的控枪数据
local Xkxiong = {1,0,1,0,1,0,0,1,1,1,2,1,1,1,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
local Ykxiong = {1,2,2,3,2,2,3,2,2,3,2,2,3,2,2,3,2,2,3,2,2,3,2,2,3,2,2,3,2,2,2,2,2,2,2,2}
----小熊开镜的控枪数据

local Xjhudie = {-1,-1,-1,-1,-1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
local Yjhudie = {1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
----蝴蝶肩射的控枪数据
local Xkhudie = {0,0,0,0,-1,-2,-1,-1,-2,-1,-1,-2,0,0,0,0,2,3,4,3,4,3,4,3,4,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
local Ykhudie = {1,2,1,2,2,3,2,3,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1}
----蝴蝶开镜的控枪数据

local Xjmaomao= {-1,0,-1,0,-1,0,-1,0,-1,0,-1,0,-1,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
local Yjmaomao= {1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1}
----猫猫肩射的控枪数据
local Xkmaomao= {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1}
local Ykmaomao= {1,2,3,2,3,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,2,1,1,2,2,2,2,1}
----猫猫开镜的控枪数据

local Xjaika= {0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,1,2,1,2,1,2,1,2,1,2,1,2}
local Yjaika= {1,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3}
----艾卡肩射的控枪数据
local Xkaika= {0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,1,2,1,2,1,2,1,2,1,2,1,2}
local Ykaika= {1,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3}
----艾卡开镜的控枪数据

local capacity = 30
--capacity为默认弹匣容量，所有人都为30发，建议别乱改，改大的话可能会导致子弹打完后画面依然在动，影响观感，况且控枪数据也有限，改的太大也没用。

local jianshe = false
--肩射状态，默认为关闭

local kaijing = false
--开镜状态，默认为关闭

EnablePrimaryMouseButtonEvents(true)
--启用鼠标主键(即左键）事件报告

function OnEvent(event, arg)
  --OutputLogMessage("event = %s, arg = %d\n", event, arg)
  --监听到鼠标事件时向控制台输出

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
     jueseId = 0
     OutputLogMessage("关闭脚本，鼠标恢复正常\n")
     --OutputLogMessage("已关闭, 当前角色id = %d，角色为空\n",jueseId)
  end
  --当按下4号键时，关闭脚本，鼠标恢复正常
  
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 8) then
     jueseId = jueseId + 1
     if (jueseId > #juese) then
         --OutputLogMessage("当前角色溢出了\n")
         jueseId = 1
     end
     OutputLogMessage("当前角色id = %d, 角色为 = %s\n",jueseId,juese[jueseId])
  end
  --当按下8号键时，切换下一个角色
  
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 7) then
     jueseId = jueseId - 1
     if (jueseId <= 0) then
         jueseId = jueseId + math.abs(jueseId) + #juese
     end
     OutputLogMessage("当前角色id = %d, 角色为 = %s\n",jueseId,juese[jueseId])
  end
  --当按下7号键时，切换上一个角色
  
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
     capacity = 35
     OutputLogMessage("恢复子弹数量\n")
  end
  --当按下5号键时，恢复子弹数量
  
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
     jianshe = true
     kaijing = false
     OutputLogMessage("肩射已打开\n")
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 6) then
     jianshe = false
     OutputLogMessage("肩射已关闭\n")
  end
  --当按下6号键时肩射，松开时正常
  
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 2) then
     jianshe = false
     kaijing = true
     OutputLogMessage("开镜已打开\n")
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 2) then
     kaijing = false
     OutputLogMessage("开镜已关闭\n")
  end
  --当按下2号键时开镜，松开时关镜
  
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and jueseId ~= 0) then
      Sleep(5)
      OutputLogMessage("控枪开始-----")
      for i=1, 4000 do
          if(IsMouseButtonPressed(1)  == false) then
              --OutputLogMessage("停止射击\n")
              break
          end
          if(capacity < 0) then
              OutputLogMessage(">供弹不足!!!!!-----")
              break
          end
          if(jueseId == 1) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjming[i],Yjming[i])
                  --OutputLogMessage("明肩射移动\n")
                  Sleep(50)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkming[i],Ykming[i])
                  --OutputLogMessage("明开镜移动\n")
                  Sleep(70)
              else
              end
          elseif(jueseId == 2) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjlawei[i],Yjlawei[i])
                  --OutputLogMessage("拉微肩射移动\n")
                  Sleep(60)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xklawei[i],Yklawei[i])
                  --OutputLogMessage("拉微开镜移动\n")
                  Sleep(60)
              else
              end
          elseif(jueseId == 3) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjshamao[i],Yjshamao[i])
                  --OutputLogMessage("沙猫肩射移动\n")
                  Sleep(60)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkshamao[i],Ykshamao[i])
                  --OutputLogMessage("沙猫开镜移动\n")
                  Sleep(60)
              else
              end
          elseif(jueseId == 4) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjfeisha[i],Yjfeisha[i])
                  --OutputLogMessage("绯莎肩射移动\n")
                  Sleep(60)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkfeisha[i],Ykfeisha[i])
                  --OutputLogMessage("绯莎开镜移动\n")
                  Sleep(60)
              else
              end
          elseif(jueseId == 5) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjxinghui[i],Xjxinghui[i])
                  --OutputLogMessage("星绘肩射移动\n")
                  Sleep(50)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkxinghui[i],Ykxinghui[i])
                  --OutputLogMessage("星绘开镜移动\n")
                  Sleep(50)
              else
              end
          elseif(jueseId == 6) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjxiong[i],Yjxiong[i])
                  --OutputLogMessage("小熊肩射移动\n")
                  Sleep(55)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkxiong[i],Ykxiong[i])
                  --OutputLogMessage("小熊开镜移动\n")R
                  Sleep(55)
              else
              end
          elseif(jueseId == 7) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjhudie[i],Yjhudie[i])
                  --OutputLogMessage("蝴蝶肩射移动\n")
                  Sleep(45)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkhudie[i],Ykhudie[i])
                  --OutputLogMessage("蝴蝶开镜移动\n")R
                  Sleep(45)
              else
              end
          elseif(jueseId == 8) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjmaomao[i],Yjmaomao[i])
                  --OutputLogMessage("猫猫肩射移动\n")
                  Sleep(45)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkmaomao[i],Ykmaomao[i])
                  --OutputLogMessage("猫猫开镜移动\n")
                  Sleep(60)
              else
              end
          elseif(jueseId == 9) then
              if(jianshe == true) then
                  MoveMouseRelative(Xjaika[i],Yjaika[i])
                  --OutputLogMessage("艾卡肩射移动\n")
                  Sleep(45)
              end
              if(kaijing == true) then
                  MoveMouseRelative(Xkaika[i],Ykaika[i])
                  --OutputLogMessage("艾卡开镜移动\n")
                  Sleep(50)
              else
              end
          end
          capacity = capacity  - 1
          --OutputLogMessage("子弹剩余%d\n", capacity)
      end
      OutputLogMessage(">控枪结束\n")
  end
end
