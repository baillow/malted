#!/bin/sh

unset LD_LIBRARY_PATH;
unset CLASSPATH;
export JMF_HOME="./jmf"
export JAVA_HOME="/usr"
export CLASSPATH="${JMF_HOME}/lib/jmf.jar:${JMF_HOME}/lib/mp3plugin.jar:${JMF_HOME}/lib/mediaplayer.jar:${CLASSPATH}"
export LD_LIBRARY_PATH="${JMF_HOME}/lib:${LD_LIBRARY_PATH}"

cd /home/xchi/Malted

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
	
	var1="MALTED   RUNTIME  SYSTEM"
	var2="loading classes ..."
	var="*"
	echo  " "
	echo "*"
	echo  $var1 
	echo  "************"
	echo  $var2      
	echo  "*"
	aux=$JAVA_HOME"bin/java"

        $aux -cp $CLASSPATH com.sun.media.codec.audio.mp3.JavaDecoder	
	$aux -cp $CLASSPATH:classes/malted.jar:classes/parser.jar:classes/jaxp.jar:classes/jhall.jar -ms8M -mx40M com.malted.rts.RTS
fi
