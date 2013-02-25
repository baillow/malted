#!/bin/sh

USER=`whoami`
if [ $USER = "root" ];
then
    $HOME/Malted/xdg-desktop-menu install --system --noupdate --vendor malted $HOME/Malted/rts.desktop
    $HOME/Malted/xdg-desktop-menu install --system --noupdate --vendor malted $HOME/Malted/rts_full.desktop
    $HOME/Malted/xdg-desktop-menu install --system --noupdate --vendor malted $HOME/Malted/dve.desktop
else
    $HOME/Malted/xdg-desktop-menu install --user --noupdate --vendor malted $HOME/Malted/rts.desktop
    $HOME/Malted/xdg-desktop-menu install --user --noupdate --vendor malted $HOME/Malted/rts_full.desktop    
    $HOME/Malted/xdg-desktop-menu install --user --noupdate --vendor malted $HOME/Malted/dve.desktop
    $HOME/Malted/xdg-desktop-menu install --user --noupdate --vendor malted $HOME/Malted/uninstall.desktop
    $HOME/Malted/xdg-desktop-icon install --vendor malted $HOME/Malted/rts.desktop
fi

$HOME/Malted/xdg-desktop-menu forceupdate --system
