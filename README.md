# Adobe alt key fixer

This script changes alt key behavior for Adobe Premiere Pro and Adobe After Effects in Windows.

### The problem
When you are working hard with timeline, you often do scale in and scale out. In both products (Pr and Ae) scaling is hardcoded to alt + mouse wheel and you cannot change this in settings.

Also, it often happens that you release alt key without even scaling. In that case, window's alt menu pops up and working area loses its focus. So you cannot make another scale, until you press alt again or do additional click in timeline.

### Ideas for solving 
1) Wait until Adobe will fix it oficially.
Do not be naive, Adobe will not fix it. There are disscussions started in 2010 and still (end of 2016) they ignore such important UI experience.
2) Hack the exe file. Find in hex editor place where they catch alt+wheel event and simply replace it with ctrl+wheel.
It may be not such easy as it seems. Anyway, I have no idea hot to do this (at least for now).
3) Swap ctrl and alt in register.
It is possible, but then you will need to reassign all hotkey combinations and also you will suffer from incorrect behavior in other applications (for example in browser).
4) Make a script, that will change behavior only for Adobe apps, but not for other apps n OS.
Yes, perfect solution. More of that, it will change only alt+wheel and ctrl+wheel, so you do not even need to reassign all hotkey combinations. This repository provides you this solution.

This script solves both problems:
 - It allows you to use ctrl + mouse wheel for zooming.
 - It gets rid of alt key menu activation.


### How to use
- Download autohotkey application from [here](https://www.autohotkey.com/) and install it.
- Double click on script from this repository. An icon will appear in system tray.
- Enjoy comfortable behavior.
### Licence
GNU General Public License v3
### Todo
- Scan window under mouse cursor and make script to be applied only for Adobe windows, even if they are not active.
- Possibility to apply script for individual panel's windows (unattached from main window)

