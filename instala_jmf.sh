#!/bin/sh

USER=`whoami`
if [ $USER = "root" ];
then
    chmod -R a+r /home/xchi/programs/Malted/
    chmod -R a+w /home/xchi/programs/Malted/
    cp /home/xchi/programs/Malted/jmf/lib/*.jar /usr/lib/jvm/java-6-sun-1.6.0.00/jre/lib/ext
    DIRS_PLUGINS=`find /usr/lib -name "plugins" | grep "mozilla\|firefox"`
    for DIR_PLUGIN in $DIRS_PLUGINS
    do
	[ -e $DIR_PLUGIN/libjavaplugin_oji.so ] && cp -d $DIR_PLUGIN/libjavaplugin_oji.so $DIR_PLUGIN/libjavaplugin_oji.so.backup
	[ -e /usr/lib/jvm/java-6-sun-1.6.0.00/jre/plugin/i386/ns610-gcc32/libjavaplugin_oji.so ] && [ -e $DIR_PLUGIN ] && ln -f -s /usr/lib/jvm/java-6-sun-1.6.0.00/jre/plugin/i386/ns610-gcc32/libjavaplugin_oji.so $DIR_PLUGIN/libjavaplugin_oji.so
	[ -e /usr/lib/jvm/java-6-sun-1.6.0.00/jre/plugin/i386/ns7/libjavaplugin_oji.so ] && [ -e $DIR_PLUGIN ] && ln -f -s /usr/lib/jvm/java-6-sun-1.6.0.00/jre/plugin/i386/ns7/libjavaplugin_oji.so $DIR_PLUGIN/libjavaplugin_oji.so
    done    
fi
exit 0