Malted Update of 2000-09-03
Version 1.2 Revision 1.2.1

Contents:

	1. New functionality 
		1.1. New functionality of the DVE.
		1.2. New functionality of the RTS and the RTE.
	2. Bugs fixed and details modified.
	3. Improvements under development.
	4. Instructions for updating your Malted System.



1. New functionality 

1.1. New functionality of the DVE.

1.1.1. The edition of complex courses has been considerably improved. To begin with, there is distinction between the concepts of "frame" and "frame in a course" (see the explanation in 1.2.1.). When you drag a frame into a course a new frame in the course is added. You can drag the same frame several times into a course creating several "frames in the course" which have the same frame (script), thus the same frame may have different course links depending on what "frame in the course" it corresponds to. This is explained further in 2.13 below.

1.1.2. LINKS: In each frame you can have several media objects with ACTION="courseLink" whose VALUE is the name of a LINK. These names appear when you edit the links of a frame ina course. You can edit each link of a frame in a course adding triplets of DESTINATION, CONDITION and VALUE. The empty CONDITION is interpreted as "true". The DESTINATION of a LINK may be any other frame in the course. The VALUE must be a number adequate to the CONDITION. For CONDITIONS scoreLessThan and scoreEqualOrGreaterThan the VALUE must be an integer between 0 and 100 (it represents the score percentage). For CONDITIONS timeLessThan and timeEqualOrGreaterThan the VALUE must be an integer expressing time in seconds. The triplets are evaluated in the order they appear in the edit link dialog box. At runtime, the conditions are verified in order and the first one that is satisfied determines the DESTINATION. Using several triplets in the same link the user can construct very sophisticated conditional links. Technically each triplet of DESTINATION, CONDITION AND VALUE is another link with the same name. 

1.1.3. There is an "undo" when editing frames and courses. It can be used to undo up to 10 times the last actions. This is further explained below in 2.14 and 2.15.

1.1.4. It is possible to copy any selected object (MEDIA, PANEL, CARD or CONTAINER), then select an appropriate object in the same or another frame and paste on it the copied one. When a card or panel is copied then actually both the card and the panel are copied and the user can paste either of them, depending on the object selected to paste. If the selected object on which to paste is a panel then only the card is copied but if it is a container then the user can choose to paste the panel together with all the cards or instead a panel with only the selected card in it. See 2.22 and 2.31 below.

1.1.5. The window where one chooses the template to use for a new frame, has now a "preview" option that allows the user to see the template before choosing it.

1.1.6. When changing the size of an object it is possible to select a corner and the appropriate resize cursor appears indicating that you can resize the object it by moving its corner both horizontally and vertically. (Previously you could only move the sides horizontally or vertically but not in both ways at the same time.)

1.1.7. When moving a container inside a card or on the main frame, if the borders are outside the card or frame when you release it, then the object is resized to avoid having a part outside the card or frame. (Previously it was possible to end up loosing objects outside cards or outside of the main frame).

1.2. New functionality of the RTS and the RTE.

1.2.1. There is a distinction between the concepts of "frame" and "frame in a course". A "frame" is the file containing the script of a frame while a "frame in a course" is an object inside the course which is associated to a "frame" but besides it contains all the links to other frames in the course. Each frame in a course may have many links and some of the links may have the same name so that when such name is used to define the link on the frame, the conditions of all the links with that name are evaluated in order and the destination of the first one which is true is th one to which the program navigates. 

1.2.2. The variable score can be used now with two condition: scoreLessThan and scoreEqualOrGreaterThan, to provide conditional links. The score is expressed in percentage and the time in seconds. See cxcourse/xml/sampleComplexCourse.cxml for an illustration of the new functionality of complex courses.

1.2.3. The new variable "time" can be used to activate links at runtime. In particular it can be used to create links that occur automatically after a number of seconds. This is illustarated in the course cxcourse/xml/sampleComplexCourse.cxml provided with this release.

1.2.4. The links with NAME="hiddenlink" are evaluated continuously at run time and when one of their conditions is satisfied, the program jumps to the corresponding destination.

1.2.5. The exit procedures of RTS, RTSFullScrenn and RTE have been revised and homogeneized.(added in revision 1.2.1)

1.2.6. The RTS, RTSFullScrenn and RTE can now be used with the LMS developed by Capture.(added in revision 1.2.1)

2. Bugs fixed and details modified.

2.1. Importing frames is possible also from the courseware management with the new menu item Frame/Import-frame. The frame is added to the project. N.B. As before, adding a frame to the courseware has to be done explicitly with Courseware/add-frame.

2.2. In the import dialog the information of media and script to be imported is the size of the file (before it was the size of the icon, right only for images !) Moreover, for scripts the total size is shown (the script + all the associated files).

2.3. The container of the media is called "Media Collection" and the container of the frames is called "Frames Collection" (suggested by Peter R. Monthienvichienchai, UCL).

2.4. The ToolTipText of the frames in the FrameContainer is the description of the frame.

2.5. The ToolTipText of the media in the MediaContainer is the size of the file.

2.6. Bugs fixed in FrameProperties dialog: The filename can be changed, the file is renamed (before this was not done correctly). The description can be changed, it is saved in the script (not before).

2.7. CoursewareProperties dialog: 

2.7.1. The filename is now correct (before was the "title"). It can be changed and the file is renamed. 

2.7.2. A complex structure cannot be changed into linear. But viceversa is possible 

2.7.3. A start frame must be selected when the structure is complex (before there was no control) [Tech: public methods give the new properties and the changes are done outside the dialog (like in FramePropertiesDialog)]  N.B. As a start frame must be selected when the course structure is complex, before saving the course a test is made and in case a warning appears, asking to select a frame. This is in case the course is saved before the CoursewareProperties dialog has never been open.. 

2.8. Open a frame: the not found assets (files in the script but not in the project) are notified only once at the end.  

2.9. Not found assets: the source file in the frame script is kept even if the file is not found in the project. In Dialog to edit objects, in the combo-box a string with the name of the "not found" file is added and selected (with quotes). 

2.10. in DialogOpenProject the list of projects is sorted alphabetically.

2.11. Each frame can be used in a course many times. When it is put in a course, it receives a name. 

2.12. CoursewareProperties and FrameProperties dialogs are changed to take into account the new structure. It is possible to change the frameName in course. 

2.13. Complex courses: links with conditions. The EditLinkDialog handles the links of each frame.  

2.13.1. List of links: all the objects in the frame which have ACTION = "courseLink". The links are identified by the "VALUE" of the object. Besides of those, there are always two links by default: "next" is the right arrow on the top menu in the RTS . "hiddenLink" is a virtual link without graphical representation. It can be used to go on even if the student does not click on the screen. The condition "TimeEqualOrGreaterThan" (see later) should always be used for this link. 

2.13.2. For each link, a list of destinations can be chosen. The buttons "Add", "Insert" and "Remove" allow to define the list. If a link has no destination, it is considered as "not used" and it is actionless at Run Time. If more than one destination is set, the first one for which the condition (see later) is satisfied is used. 

2.13.3. For each destination, a condition can be chosen among the list of available conditions ("ScoreLessThan","ScoreEqualOrGreaterThan", "TimeLessThan", "TimeEqualOrGreaterThan") and a value can be entered. If no condition is set, it is considered as always true. 

2.13.4. If the name of a frame in course is changed then the links are updated automatically and if it happens to be the starting frame then this is also updated automatically.

2.14. The Undo is available for Frames: it goes backward for 10 steps. When the frame is saved (the script is written on the disk), everything is initialised and the Undo button is disabled. The Undo works separately from each Frame.  

2.15. The Undo is available for Courses. It works in the same way than for the Frames. 

2.16. bug fixed: the 'Save' menu button is correctly enabled or disabled when the user switches from one frame to another.

2.17. "Edit Script" with an external editor is now possible if the Frame (or the Courseware) is open. It must be saved.  N.B. during the edition with an external editor, the DVE is enabled and the frame (or courseware) can be graphically modified at the same time. The modifications saved on the disk are those that are latest saved.

2.18. a "Reload Script" action is created for Frame and Courses. It is useful when the script is edited by an external editor. 

2.19. A Container can be resized graphically also by dragging the corner. 

2.20. Bug fixed: When you move a Container with the mouse, it cannot exit the Card. In case, the container is resized. 

2.21. There is a new XML attribute named "VERSION" in Course and Frame. (see the new course.dtd and frame.dtd. This will allow to handle better the changes between versions.

2.22. COPY/CUT and PASTE: The following actions are implemented: Copy / Cut Paste into   Media Media (not possible)  Media Container OK  Media Card Coming (see 31: a media outside a container )  Container Media (not possible)  Container Container (not possible)  Container Card OK   Card Media (not possible)  Card Container OK. You can paste the selected card or the whole panel  Card Card (a panel) OK. The card is added to the panel  Card Malted Coming (see 2.31: a panel outside a container)  . 

2.23. A new Panel is on the bottom of the main window, to show information. It is used now for show the selection on the edited frame. [tech: use the methods writeInfoPane() and writeRightInfoPane(). ]

2.24. For every Dialog it is possible to use the Return key. 

2.25. Improvement of the NewFrame dialog: 

2.25.1. The list of templates is sort alphabetically. 

2.25.2. The description is not editable any more. (You can modify it later in the Properties dialog).  

2.25.3. A preview of the template is now available. 

2.26. bug fixed: the frames in a course are listed forward in the script and in the courseware map.

2.27. bug fixed: to drag & drop a frame into a courseware, you must exit the "Frames Collection" (before it was sufficient to drag a little the frame, and this caused the frame added even if you just wanted to have a preview).

2.28. the warning "This frame contains some links…" when you add a frame into a course is removed.

2.29. Delete a card: when a card is selected, the Delete action can be now applied on the card or on the whole panel (a popup dialog asks you to choice).

2.30. Improvement of the menus: 

2.30.1. Menu Edit: add the Edit Object with shortcut crt+E. Creation of the new submenu Project. 

2.30.2. In the Popup :add the Copy, Cut, Paste, Undo and Delete, Next and Back with icons. The remove buttons (remove card, remove container, etc.) are now all replaced by the button Delete. 

2.30.3. In the ToolBar: add Next and Back card. 

2.30.4. In the top of the frame map, all the buttons have been removed (all the functionalities are however available by the menus, more logically organized).  The display of the selected card is now on the bottom of the window. 


3. Improvements under development.

3.1. Handling "free" Media and Panels outside containers. The RTE already handles such free media and panels and the DVE's code for handling them is well advanced. This functionality will be released soon.

3.2. The help of the DVE is badly outdated. It will be updated for the next release. Please use this document as a reference to the new fuctionality.


4. Instructions for updating your Malted System.

4.1. Copy the contents of the two zip files provided: MaltedUpdate_1.2(1).zip and MaltedUpdate_1.2(2).zip, to your Malted home folder, overwriting all. The first zip file contains all the modified files except the ne dve_help which is contained in the second zip file. The new malted.jar, the new icons, the new language files, the new dtd files and the new sample courses are all in the first zip file.

4.2. In the "language" folder there is the new model for the language files: some new strings have been added, and some deleted. The old translations should work properly, but with some string missed. Please update your translations if needed consulting the model.

4.3. The new folder "other_icons" contains the icons kindly provided by Capture. There are four sets of icons provided (the default series in dve_icons0 plus three new series). To use them select one group, i.e. all gif files in one of the subfolders, and copy them onto the "images" folder (they have the same name and will be loaded automatically instead of the old ones). 