##############################################################
#
#               Python OSX MouseClick
#
#       (c) 2010 Alex Assouline, GeekOrgy.com
#
##############################################################
import sys
import os
xclick = 0
yclick = 0
'''try:
        xclick=int(sys.argv[1])
        yclick=int(sys.argv[2])
        try:
                delay=int(sys.argv[3])
        except:
                delay=0
except:
        print "USAGE mouseclick [int x] [int y] [optional delay in seconds]"
        exit()
print "mouse click at ", xclick, ",", yclick," in ", delay, "seconds"
# you only want to import the following after passing the parameters check above, because  takes time, about 1.5s
# (why so long!, these libs must be huge : anyone have a fix for this ?? please let me know.)'''
import time
from Quartz.CoreGraphics import CGEventCreateMouseEvent
from Quartz.CoreGraphics import CGEventPost
from Quartz.CoreGraphics import kCGEventMouseMoved
from Quartz.CoreGraphics import kCGEventLeftMouseDown
from Quartz.CoreGraphics import kCGEventLeftMouseDown
from Quartz.CoreGraphics import kCGEventLeftMouseUp
from Quartz.CoreGraphics import kCGMouseButtonLeft
from Quartz.CoreGraphics import kCGHIDEventTap
from Quartz import CGDisplayBounds
from Quartz import CGMainDisplayID
from pyautogui import press, typewrite, hotkey

def screen_size():
    mainMonitor = CGDisplayBounds(CGMainDisplayID())
    return (mainMonitor.size.width, mainMonitor.size.height)

def mouseEvent(type, posx, posy):
        theEvent = CGEventCreateMouseEvent(None, type, (posx,posy), kCGMouseButtonLeft)
        CGEventPost(kCGHIDEventTap, theEvent)
def mousemove(posx,posy):
        mouseEvent(kCGEventMouseMoved, posx,posy);
def mouseclick(posx,posy):
        #mouseEvent(kCGEventMouseMoved, posx,posy); #uncomment this line if you want to force the mouse to MOVE to the click location first (i found it was not necesary).
        mouseEvent(kCGEventLeftMouseDown, posx,posy);
        mouseEvent(kCGEventLeftMouseUp, posx,posy);
#time.sleep(delay);
#mouseclick(xclick, yclick);
#os.system('open -a Safari.app')



'''
mousemove(xclick, yclick);
#time.sleep(1);
width = int(screen_size()[0]/2)

for i in range(0,width):
    mousemove(i, i);
    time.sleep(0.002);

for i in range(0,350):
    mousemove(width, width-i);
    time.sleep(0.001);

mouseclick(500,100)
time.sleep(0.09)
mousemove(500, 151)
time.sleep(0.09)
mouseclick(500,150)
time.sleep(0.09)
mouseclick(500,151)
'''
