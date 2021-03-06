Adobe alt key fixer
===================
![adobe alt icon](img/adobe-alt-64.png)

This script changes alt key behavior for Adobe applications (mainly for Premiere Pro, Premiere Elements and After Effects) in Windows.
 - It allows you to use ctrl + mouse wheel for zooming in timeline.
 - Allows to scroll timeline with mouse wheel in Premiere Elements in Expert mode.
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
- Select needed script:
  - For use with Ae or Pr, double click on "\_Ae\_Pr.ahk" file. An icon will appear in system tray.
  - For use with PrE, double click on "\_PrE.ahk" file. An icon will appear in system tray.

- Enjoy comfortable behavior.
  * Script also works for unattached panels from main window.
  * In Windows 10 you can scale without even focusing Adobe window. Just be sure you have enabled "Scroll inactive windows when I hover over them" option under Settings > Devices > Mouse & Trackpad.
  * In Windows 7 and 8 you can also scale without focusing Adobe window. But you need to install [Taekwindow](http://taekwindow.net/download.html) application.

## Additional tips ##

### How can I enter expression for some property in Ae? ###
  It is another problem with alt button. In Windows you can press alt + mouse click on some property (for example, on position) and enter expression for it. But what if you are using Adobe software in virtual machine from Linux host? You are not able to do that, because alt + mouse is handled by window manager.
  However, you are still able to enter expression. Just select needed propetry, then use main window menu Animation > Add expression or press alt + shift + =.

### How can I change key combinations in Ae? ###
  There is no GUI for this. But you can change some combinations. This is official Adobe [sulution](https://helpx.adobe.com/after-effects/using/modify-keyboard-shortcuts.html): in main window menu choose Edit > Preferences > General then click Reveal Preferences in Explorer. You will see "Adobe After Effects 14.0 Win ru_RU Комбинации клавиш.txt" or similar file. Edit and save this file. Restart Ae.<br>
  In Ae 2018 they added interface for key combinations.

### How can I autostart alt-key-fixer at Windows boot ###
  Create a shortcut for "\_Ae\_Pr.ahk" or "\_PrE.ahk" file (using right mouse button menu) and move it to "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" folder.

## Licence ##
GNU General Public License v3

## Todo ##
- Make a single scipt file (if possible)
- Fix symmetric remap for scrolling tracks up and down
- Improve Open Source video editors, to be independent from adobe and windows.
- Script for Ae to autoload alt key fixer (checkout branch start_with_adobe for more info)
