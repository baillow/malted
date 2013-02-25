#!/bin/sh

USER=`whoami`
if [ $USER = "root" ];
then
    /home/xchi/Malted/xdg-desktop-menu uninstall --system --noupdate --vendor malted /home/xchi/Malted/rts.desktop
    /home/xchi/Malted/xdg-desktop-menu uninstall --system --noupdate --vendor malted /home/xchi/Malted/rts_full.desktop
    /home/xchi/Malted/xdg-desktop-menu uninstall --system --noupdate --vendor malted /home/xchi/Malted/dve.desktop
else
    /home/xchi/Malted/xdg-desktop-menu uninstall --user --noupdate --vendor malted /home/xchi/Malted/rts.desktop
    /home/xchi/Malted/xdg-desktop-menu uninstall --user --noupdate --vendor malted /home/xchi/Malted/rts_full.desktop
    /home/xchi/Malted/xdg-desktop-menu uninstall --user --noupdate --vendor malted /home/xchi/Malted/dve.desktop
    /home/xchi/Malted/xdg-desktop-menu uninstall --user --noupdate --vendor malted /home/xchi/Malted/uninstall.desktop
    /home/xchi/Malted/xdg-desktop-icon uninstall --vendor malted /home/xchi/Malted/rts.desktop
fi

/home/xchi/Malted/xdg-desktop-menu forceupdate --system