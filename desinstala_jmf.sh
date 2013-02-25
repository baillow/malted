#!/bin/sh

USER=`whoami`
if [ $USER = "root" ];
then
    DIRS_PLUGINS=`find /usr/lib -name "plugins" | grep "mozilla\|firefox"`
    for DIR_PLUGIN in $DIRS_PLUGINS
    do
	rm -f $DIR_PLUGIN/libjavaplugin_oji.so
	[ -e $DIR_PLUGIN/libjavaplugin_oji.so.backup ] && mv $DIR_PLUGIN/libjavaplugin_oji.so.backup $DIR_PLUGIN/libjavaplugin_oji.so
    done

    rm -f /usr/lib/jvm/java-6-sun-1.6.0.24/jre/lib/ext/jmf.jar
    rm -f /usr/lib/jvm/java-6-sun-1.6.0.24/jre/lib/ext/mediaplayer.jar
    rm -f /usr/lib/jvm/java-6-sun-1.6.0.24/jre/lib/ext/mp3plugin.jar
    rm -f /usr/lib/jvm/java-6-sun-1.6.0.24/jre/lib/ext/multiplayer.jar
fi
exit 0