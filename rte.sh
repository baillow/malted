#!/bin/bash

unset LD_LIBRARY_PATH;
unset CLASSPATH;
export JMF_HOME="/home/xchi/programs/Malted/jmf"
export JAVA_HOME="/usr/lib/jvm/java-6-sun/jre"
export CLASSPATH="${JMF_HOME}/lib/jmf.jar:${JMF_HOME}/lib/mp3plugin.jar:${JMF_HOME}/lib/mediaplayer.jar:${CLASSPATH}"
export LD_LIBRARY_PATH="${JMF_HOME}/lib:${LD_LIBRARY_PATH}"

cd /home/xchi/programs/Malted

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

        var1="MALTED   RUNTIME  ENVIRONMENT"
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

#comprobar si se da como parametro de entrada algun course 
	ARGS=1
	#para el caso en el que ejecutamos rte desde el directorio de malted. la carpeta classes es un subdirectorio del mismo, no hace incluir el emplazamiento en la llamada, se sobreentiende 
	ARGV=2
	#el primer argumento indica localizacion de malted. el segundo hace referencia al course que se pretende ejecutar 
	if [ $# -ne "$ARGS" ] && [ $# -ne "$ARGV" ]
	then
		$aux -cp $CLASSPATH:classes/malted.jar:classes/parser.jar:classes/jaxp.jar:classes/jhall.jar -ms8M -mx40M com.malted.rts.RTS -EDIT ../config/intro/introII/xml/introII.cxml
	else
			if [ $# -ne "$ARGV" ]
				then
				 $aux -cp $CLASSPATH:classes/malted.jar:classes/parser.jar:classes/jaxp.jar:classes/jhall.jar -ms8M -mx40M com.malted.rts.RTS -EDIT $1
			else
				cd $1
				$aux -cp $CLASSPATH:$1/classes/malted.jar:$1/classes/parser.jar:$1/classes/jaxp.jar:$1/classes/jhall.jar -ms8M -mx40M com.malted.rts.RTS -EDIT $2
			fi
	fi
fi
