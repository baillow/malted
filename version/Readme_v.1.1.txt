MALTED SYSTEM version 1.1
April 2000

Copyright (C) 2000 MALTED Consortium.
All Rights Reserved


*** Installation ***

    If you received this version of MALTED on a CD-ROM, 
    you can install it as follows:

    * On Windows 95 or Windows NT 4.0: ... (SEMA completes) 


*** Requirements ***

    Windows 95 or Windows 98.
    RAM required: 32 MB for RTS and RTE, 64 MB for DVE. 
    RAM recommendend: 64 MB for RTS and RTE, 128 MB for DVE.
    Proccessor recommended: Pentium II @ 266 MHz or faster.
    For best multimedia performance the latest version of 
    MS Windows Media Player must be installed. 
    (You can download it from: http://www.microsoft.com/windows/mediaplayer)
    Java Virtual Machine JRE 1.1.8 and JMF 1.1 (both are provided with 
    the normal installation of Malted).

*** Execution ***
   
    To open the Runtime System click the MaltedRTS link or call RTS.bat.
    To open the Developer Environment click the MaltedDVE link or call DVE.bat.
    To open the Runtime Environment click the MaltedRTE link or call RTE.bat.
    To open the Runtime System in Full Screen version click call RTSFullScreen.bat.

*** Troubleshooting ***

    JAVA VERSIONS
    Malted does not require that you have any version of the JDK or JRE
    installed, but if you do, it must be version 1.1.8 or later.
    The installation of the MALTED SYSTEM includes the JAVA VIRTUAL MACHINE 
    JRE 1.1.8. A problem can occur if another VIRTUAL MACHINE (e.g. older version) 
    is installed and over-rides the JRE that comes with Malted. 
    The way to solve this problem is to uninstall your older JDK or JRE
    or install JRE 1.1.8 or later. 

    SOUND RECORDING.
    In order to record sound in Malted applications it is necessary that
    your Windows registry has associated some recording program to the record
    function of wav files. Normally the program associated is sndrec32.exe.
    If the recording applications do not work you can create the association
    following these steps:
    1) Open the file explorer.
    2) Select "view options".
    3) Select "File types".
    4) Choose audio or sound file type with extension wav.
    5) Click "edit".
    6) Add the new action "record" and associate it to sndrec32.exe
    (browse and look for sndrec32.exe inside your windows directory)

*** Documentation ***

    For the MALTED SYSTEM User Manual and the 
    Tutorial for the use of the Developer tools, 
    activate the Start menu, select Malted from the Program menu, choose
    Manual or Tutorial (this documentation will open in your favourite browser).
    A complete Help system is available directly from the RunTime System (RTS) 
    and from the Developer Tool (DVE).

*** List of improvements ***

    Version 1.1 provides enhancements to the MALTED SYSTEM 
    for developers and users. Here are just a few of the new features:

    TEMPLATES
     - Templates have been reorganised and many new ones have been added. 
     - new functionalities include hyperlinks and winEMail with mailto+subject.
     - new interaction Transcription
     - mother_tongue & target_language for frames, used by dictionary
     - hyperlinks, linkcolor & vlinkcolor used in hypertext are selectable from DVE
     - textArea can be editable and also they can have the background colour you decide on the media
     - popOutCourses can link to courses even on internet
     - explain how cache and different asset bases are working
     - improved popOutText with a box, I ...It can show RTF files.
     - dictionary 
     - winRecord creates a WAV file when it doesn't exist and you can record on the cache when working from URL's
     - winOpen executes .exe, .com, .bat files

     RTS and RTE

     - The new Malted Runtimes run OnLine, from url or local network. 
     - config/homeurls.txt maintains a list of frequently used http addresses or local net addresses
       for courses.
     - A default course "all frames" is always available that allows the user to run all frames 
       in a project even if they are not included in a course.
     - List of videos is correct now when editing a media. (before, the videos were added to image list)
     - MPlayer is faster. This means that videos and audio respond much faster.
     - MPlayer allows non-modal behaviour so the user can write while the player is running
       or waiting. 
     - There is a new RTS called RTSFullScreen which uses the full screen and it's 
       navigation bar is "retractible". It appears only when the cursor reaches the 
       top of the screen. 
     - An online DICTIONARY is available now. To call it you just need to select a word
       (highlighting it) on any text and right click on it.  A right click on a button also
       invoques the dictionary. The dictionary provides 1500 terms in 8 languages with
       pronunciation of all terms in all languages. The images provided in the dictionary
       for each term are temporary and should not be distributed.

     DVE 

     CONNECTION TO ASSET BASE
     - A bug that did not allow to import frames has been fixed.
     - Media have new attribute EDITABLE that can be used for TEXT.
     - New containers are added in front of the others. Previously they were added "behind".
     - A unique Dialog Box was developed to Import/Export both from the local disk
       or the Asset Base. Previously there were several Dialog boxes with non uniform behaviour. 
     - The configuration of metadata fields is completely reordered using pedagogic criteria. 
       The configuration uses separate meaningfull groups.
     - Several automatic metadata fields are filled.
     - The metadata fields offer tooltips to help the user.
     - Allow importation of several frames and courses, none of them is open.
     - Allow importation of courses with an open one.
     - Several changes were done on the querytool so that the user doesn't have to 
       to fill each time his/her password.
     - malted.cfg in directory config. Several asset bases can be used in separated cache directories

     OTHER CHANGES
     - dveprefs.ini is now in subdirectory config.
     - Some keystrokes: insert for import, alt-O for open project.
     - Bug when editing a media using the right-click menu was fixed. 
       It didn't know that the frame was changed.
     - DialogOpenPoject: new label explaining the use of keys and you can use tab + enter to select a project.
     - GridContainer show the media or frames in alphabetical order.
     - If a file exists with different lower/upper case letters it doesn't show the message "not found"
     - When opening a project, all the directories are created automatically.
     - In the Options Dialog the user can now choose the data to connect to the asset base.

*** Technical Support ***

    For more information about the MALTED SYSTEM, to follow the updating 
    and get technical support references, visit the web site at www.malted.com

*** Copyright Notices ***

    This version of Malted is provided only to the partners of the 
    MALTED Consortium for testing and trialing within the project.
