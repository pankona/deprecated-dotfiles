#! /bin/sh

synclient PalmDetect=1 PalmMinWidth=0 PalmMinZ=150
#synclient PalmDetect=1 PalmMinWidth=1 PalmMinZ=1
synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2
synclient HorizTwoFingerScroll=1
# x range: 1472-5664
# y range: 1408-4700
#LeftEdge                = 1765
#RightEdge               = 5371
#TopEdge                 = 1638
#BottomEdge              = 4470

xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Area" 1765 5371 0 0

#xset r rate 300 25
xset r rate 250 35
xset mouse 4/5 4
synclient MinSpeed=0.1 MaxSpeed=5 AccelFactor=0.01

#sh /home/aka/bin/power_save.sh
