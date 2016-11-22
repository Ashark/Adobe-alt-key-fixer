Adobe alt key fixer
===================

This script changes alt key behavior for Adobe applications (mainly for Premiere Pro and After Effects) in Windows.
 - It allows you to use ctrl + mouse wheel for zooming in timeline.
 - It gets rid of alt key menu activation.

## The problem ##
When you are working hard with timeline, you often do scale in and scale out. In both products (Pr and Ae) scaling is hardcoded to alt + mouse wheel and you cannot change this in settings.

Also, it often happens that you release alt key without even scaling. In that case, window's alt menu pops up and working area loses its focus. So you cannot make another scale, until you press alt again or do additional click in timeline.

## Ideas for solving ##
1. Wait until Adobe fix it.

   Do not be naive, Adobe won't fix it. People asked them for solution in official forum back in 2010, but they still (end of 2016) ignore users.
2. Hack the exe file.

   Open exe file in hex editor, find condition where they catch alt + wheel event and simply replace it with ctrl + wheel.
It may be not such easy as it seems. Anyway, I have no idea how to do it.
3. Swap ctrl and alt keys in Windows' register.

   It is possible, but it is bad solution. You will need to reassign all hotkey combinations (for example, alt+s for saving) and also you will suffer from incorrect behavior in other applications (for example in browser).
4. Make a script, that will change behavior only for Adobe apps, but not for other apps.

   Yes, perfect solution. Adobe alt key fixer provides you this solution. Moreover, it will change only alt+wheel and ctrl+wheel, so you do not even need to reassign all hotkey combinations.

## How to use ##
- Download AutoHotKey application from [here](https://www.autohotkey.com/) and install it.
- Clone this repository.
- Double click on ctrl_to_zoom.ahk file. An icon will appear in system tray.
- Enjoy comfortable behavior.
  * Script also works for unattached panels from main window.
  * In Windows 10 (don't know about previous), you can scale without even focusing window.

## Licence ##
GNU General Public License v3

## Todo ##
- Make a single scipt file (if possible)
- Fix symmetric remap for scrolling tracks up and down
- Add beautiful icon to tray
- Improve Open Source video editors, to be independent from adobe and windows.
