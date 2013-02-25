Malted 1.4  (C) (2000) "The Malted Consortium"

This release of Malted 1.4 is for Malted Partners only.
It contains the complete Java source code 
(see techdoc/java_source after installation).

LICENSE:

Partners are advised to read carefully LICENSE.html.


DOCUMENTATION:

To read the documentation open C:\MALTED\1.4\TechDoc.bat
or C:\MALTED\1.4\TechDoc.html after installation.


INSTALLATION:

To install unzip all .zip files in the CD onto the same directory.

Malted_1.4_System.zip contains the basic Malted system and some sample projects.
Malted_1.4_Doc.zip contains the Malted user and technical documentation (and Java source code).
Dictionary.zip contains the online sound and picture dictionary.
Elementary_Spanish.zip contains the beta version of the courseware developed by Capture.
EuroTelecom_English.zip contains the courseware developed by France Telecom and ENST.

Let us assume you unzip the files onto C:\MALTED\1.4\

To add full multimedia functionality you must install the JMF 
(Java Multimedia Framework) version 2.1. To do this, execute 
C:\MALTED\1.4\jmf\jmf-2_1-win.exe.

MALTED APPLET INSTALLATION:

To make the MaltedApplet work you must configure your computer.
The following configuration instructions however work well only 
for MS Internet Explorer.

It is very important that you set the MALTED_HOME directory
with the directory where your Malted System is installed.

You must add the following lines:

SET MALTED_HOME=C:\MALTED\1.4
SET CLASSPATH=%CLASSPATH%;%MALTED_HOME%\classes\swing.jar
SET CLASSPATH=%CLASSPATH%;%MALTED_HOME%\classes\parser.jar
SET CLASSPATH=%CLASSPATH%;%MALTED_HOME%\classes\jaxp.jar
SET CLASSPATH=%CLASSPATH%;%MALTED_HOME%\classes\jhall.jar
SET CLASSPATH=%CLASSPATH%;%MALTED_HOME%\classes\xml4j.jar
SET CLASSPATH=%CLASSPATH%;%MALTED_HOME%\classes\malted.jar

to your AUTOEXEC.BAT and reboot your computer.

Look carefully at MALTED_HOME, if your Malted installation
goes into a different directory, you must change the line
that starts with SET MALTED_HOME=... otherwise the applet will 
not be able to find the necessary Java classes.

The MaltedApplet works very well with Internet Explorer version 5
but it has problems with Netscape.

LICENSE:

Malted is distributed under the Free Software Agreement. 
Please open and read LICENSE.html and be sure you understand the
details of the license agreement, particularly if you plan 
to distribute the Malted Software to others. 


HARDWARE REQUIREMENTS:

- Windows 95 or Windows 98. 
- RAM required: 32 MB for RTS and RTE, 64 MB for DVE. 
- RAM recommended: 64 MB for RTS and RTE, 128 MB for DVE.
- Processor recommended: Pentium II @ 266 MHz or faster.
- For best multimedia performance the latest version of MS Windows 
- Media Player must be installed. (You can download it from: 
   http://www.microsoft.com/windows/mediaplayer) 
- Java Virtual Machine JRE 1.1.8 and JMF 2.1 
   (both are provided in this release). 


Execution:

To open the Runtime System execute MaltedRTS or call RTS.bat.

To open the Developer Environment execute MaltedDVE or call DVE.bat.

To open the Runtime Environment execute MaltedRTE or call RTE.bat.

To open the Runtime System in Full Screen version call 
RTSFullScreen.bat.

WHAT IS NEW IN MALTED 1.4

The JMF was changed. Malted now used JMF 2. Users are advised to install
it by running 

C:\MALTED\1.4\jmf\jmf-2_1-win.exe. 

The recording action creates a new empty file before recording 
(even if a non-empty one exists). Thus when preparing recording dialogs
it is not necessary to include empty wav files.

There is a new more powerful applet version of RTS, the MaltedApplet. 
This new version is capable of reproducing almost the same media files 
as the RTS. Also whenever there is a URL address which it cannot handle 
directly it passes the responsibility to the browser so, depending on
the browser's it is possible even to record sound from the applet. However
not all the problems of the applet are solved. The installation process
described above works only for Internet Explorer. In Netscape the applet
gives unjustified security and parsing errors which are Netscape bugs.

In the DVE the objects inside a container may be distributed uniformly,
as in previous versions, or each one may have its own location.


TROUBLESHOOTING:

JAVA VERSIONS Malted does not require that you have any version 
of the JDK or JRE installed, but if you do, it must be version 1.1.8 
or later. The installation of the MALTED SYSTEM includes the JAVA VIRTUAL 
MACHINE JRE 1.1.8_005. A problem can occur if another VIRTUAL MACHINE 
(e.g. older version) is installed and over-rides the JRE that comes with 
Malted. The way to solve this problem is to uninstall your older JDK and 
install JRE 1.1.8_005 by executing:

C:\MALTED\1.4\jre\jre-1_1_8_005-win.exe. 

This version uses a new XML parser which allows courses to be seen through
the MaltedApplet on any web site. The new XML parser is more strict than the
previous one and for this reason some syntactical errors that were not detected
by the older parser may be detected by the new one and this may result in some
frames not being shown. In such a case, the frame must be corrected. For example
the older parser would allow 

FONTSIZE="16"DISPLAY="no"

the new one would enforce that this be written as:

FONTSIZE="16" DISPLAY="no"

Java bug: in order to type some special characters inside the text fields,
for example the accent key, and then a vowel, you must type both keys in 
very fast sequence, otherwise only the second key will be printed.


SOUND RECORDING:

In order to record sound in Malted applications it is necessary 
that your Windows registry has some recording program associated 
to the play and record functions of wav files. Normally the program 
associated is sndrec32.exe. If the recording applications do not 
work you can create the association following these steps:
1) Open the file explorer.
2) Select "view options".
3) Select "File types".
4) Choose audio or sound file type with extension wav.
5) Click "edit".
6) Add the new action "record" and associate it to sndrec32.exe 
(browse and look for sndrec32.exe inside your windows directory) 


SOURCE CODE:

This release contains the complete source code in 
./techdoc/java_source/src_client.zip and
./techdoc/java_source/src_server.zip.
