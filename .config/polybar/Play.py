import os

try :
    val = os.popen('playerctl status').read()
except :
    val = 0
    pass;

if val == "Playing\n" :
    print("%{F#C5C8C6}%{F-}")
else :
    print("")
