
What is new in the DVE v 1.3

1. MMedia and Mpanels outside the Mcontainer are handled:
The Frame script is correctly written and read.
Graphical resizing and moving is quite ok: Good for Mcontainer and Mpanels, little problem for the Mmedia.

2. It is always possible to DELETE Mmedia,  Mpanel , MCard,  Mcontainer .

3. It is possible to ADD
Media
into MCard (also Mmalted) or Mcontainer

Panel
into MCard (also Mmalted) or MContainer

Card
Into Panel (also INSERT)

Container
into MCard (also Mmalted)


4. COPY/CUT and PASTE update:
The following actions are implemented:
Copy / Cut
Paste into


Media
Media
(not possible)

Media
Container
OK

Media
Card 
OK

Media
Malted
OK

Container
Media
(not possible)

Container
Container
(not possible)

Container
Card
OK 

Container
Malted
OK

Card
Media
(not possible)

Card
Container
OK. You can paste the selected card or the whole panel

Card
Card (a panel)
OK. The card is added to the panel

Card
Malted
OK. You can paste the selected card or the whole panel.


5. Mmedia have now a border to show when they are selected.

6. Added option to display or not the confirm dialog when deleting something.

7. Added text in the toolbar icons. In the Options you can select or not this option

8. bug fixed: menu actions New Courseware and Open Courseware are now correctly enabled and disabled (before they were enabled after importing a frame, even if a courseware was open).

9. A new menu item is added for Project

10. Rename Project is added. You can rename the project which is open.

11. Rename Project is added. You can rename the project which is open.


12. bug fixed: the menu is correctly initialised when closing the last frame (before it was not, and some actions were enabled and caused exceptions if clicked)

13. improvement in the On-Line Help: the language of the help is set according to the language chosen in the Options.
The English version of the help is quite updated: even if it not complete, the descriptions in it match with the latest dve version. Some additional help pages provided by the Enst students are included, but must be updated.
There are also a French and a Spanish version, provided by the Enst students, which need to be updated too (they are the translation of the old English version). 
N.B. The help is set automatically to the English version if the help in selected language is not found.
I would like to include also the tutorial by UCL and from Lydia. I'll ask them for the last version, if any.

14. improvement on renaming a media file: when the new name is equal to the old one (you click OK without change it) the warning window, telling that this file already exists, does not appear any more.

15. the "Set default" button on the Options is restored. This in order to put the "write.exe" text editor as default application to edit the scripts

16. a POPUP MENU is now available by right clicking the Media in the Media Collection or in a Frame in the Frames Collection.

17. bug fixed: the DVE was set to a wrong project path after running a frame with hypertext. Now it is ok.

18. new appearance of the Courseware Canvas: white when a course is open (grey if not). The selected frame is yellow.

19. Language: english can be an external file, in order to modify the default writting. If it is not there, the default is taken. 
two instruction lines added to the languages files.

20. Edit MMedia improvement: also a Long text (several lines) can be put instead of using an external text file.

21. Edit MMedia improvement: A description is shown for the actions.


KNOWN BUG

When open a Course, the not found frames (frames which are called in the course script but the corresponding frame script is not in the project) are not treated. 



