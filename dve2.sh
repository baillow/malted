#!/bin/sh

unset LD_LIBRARY_PATH;
unset CLASSPATH;
export JMF_HOME="~/programs/Malted/jmf"
export JAVA_HOME="/usr"
export CLASSPATH="${JMF_HOME}/lib/jmf.jar:${JMF_HOME}/lib/mp3plugin.jar:${JMF_HOME}/lib/mediaplayer.jar:${CLASSPATH}"
export LD_LIBRARY_PATH="${JMF_HOME}/lib:${LD_LIBRARY_PATH}"

cd ~/programs/Malted

if [ -z $JAVA_HOME ]
        then
		if [ -f JAVA_HOME.sh ]
			then
				JAVA_HOME=$(cat JAVA_HOME.sh)
                fi
else
	JAVA_HOME=$JAVA_HOME"/"
fi
if [ -z $JAVA_HOME ]
 then
	echo  "There is no JVM in your system"
 else
	echo  "JVM has been found" 
        #para eliminar el problema de que en el directorio de java exista fichero/java.dll
        JAVA_HOME=${JAVA_HOME%/.*}
	JAVA_HOME=$JAVA_HOME
        echo  "JAVA_HOME="$JAVA_HOME
	
	var1="MALTED DVE"
	var2="loading classes ..."
	var="*"
	echo  " "
	echo "*"
	echo  $var1 
	echo  "************"
	echo  $var2      
	echo  "*"
	aux=$JAVA_HOME"bin/java"

#        $aux -cp $CLASSPATH com.sun.media.codec.audio.mp3.JavaDecoder	
	$aux -cp .:classes/parser.jar:classes/jaxp.jar:classes/jhall.jar:classes_dve/dve2.jar:classes_dve/dve2resources.zip:classes_dve/l2fprod-common-shared.jar:classes_dve/l2fprod-common-sheet.jar:classes_dve/l2fprod-common-fontchooser.jar:classes_dve/l2fprod-common-directorychooser.jar:classes_dve/commons-collections-3.2.jar:classes_dve/itp-gpl.jar:classes_dve/Malted.jar:classes_dve/forms-1.0.7.jar:classes_dve/log4j-1.2.13.jar:classes_dve/looks-2.0.4.jar:classes_dve/OfficeLnFs_2.6.jar:classes_dve/commons-beanutils-core.jar:classes_dve/commons-logging-1.1.jar:classes_dve/commons-lang-2.1.jar:classes_dve/EventBus-1.0ForJDK1.4.jar:classes/malted.jar -ms8M -mx40M com.malted.launcher.Launcher
fi
