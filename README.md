## Jeff Chen & Gil Zheng

# Gujixers’ Rubik's Cube Solver

What’s the point of learning how to solve a Rubik’s Cube when you can use a computer program to do it for you? 

This program will allow users to input moves to a Rubik’s cube, visualized to the user as a net. Users will be able to scramble and solve a cube, as well as input specific moves to the cube. This program will use Processing and solve the Rubik’s Cube, as well as show the user what steps are necessary. Users should know the basic cube notations (F, R, U, L, B, D and F’, R', U', L', B', D').

Keybinds: <br/> 
(caplocks should not be on)
Q/W/E/R/T/Y/U/I/O/P for L/R/U/D/F/B/M/E/S <br/>
A/S/D/F/G/H/J/K/L for L'/R'/U'/D'/F'/B'/M'/E'/S' <br/>
Z/X/C for X/Y/Z <br/>
V/B/N for X'/Y'/Z'<br/>
/ to toggle printing of scramble</br>
ENTER to solve<br/> 
M to change modes<br/>  


https://docs.google.com/document/d/1BXVDlJIRH7PimkvV02koKximVJbK5jmj-6kPyB3UdCo/edit <br />
 **Development Log** <br />
Monday 23 May 2022 <br />
Jeff Chen: Began making Piece Class <br />
Gil Zheng: Started the Cube class and created all the rotations for the cube. <br />

Tuesday 24 May 2022 <br />
Jeff Chen: Finished Piece class, moved on to make Cube class work correctly with Piece class <br />
Gil Zheng: Started the Driver, created all the variables and started working on the display of the cube. <br />

Wednesday 25 May 2022 <br />
Jeff Chen: Began working on Solve, translating a python-based beginner's method for solving, helped in dev of Driver by fixing up mistakes and adding more movements and correcting wrong rotations <br />
Gil Zheng: Created methods in the drivers that allowed for user interaction, finished the update method and it's helper methods in order to keep refreshing display <br />

Thursday 25 May 2022 <br />
Jeff Chen: Finished driver to display the Cube as well as buttons to interact with cube, including reset, scramble, and moves
Gil Zheng: <br />

Saturday 28 May 2022 <br />
Jeff Chen: Researched different implementations of beginner's algorithm, since the python one failed, settled on a java based on to take inspiration from <br />

Sunday 29 May 2022 <br />
Jeff Chen: Tried out java recursive implementations, failed due to heavy use of recursion. Decided to use basic, human style method of analyzing cube instead <br /> 
Gil Zheng: <br /> 
Tried to implement a solution, but failed. Added MES and XYZ and added the display for it <br />

Monday 30 May 2022 <br />
Jeff Chen: Began homemade method for solving beginner's alogorithm, finished Poppy and Cross<br /> 
Gil Zheng: <br /> 
Attempted a white corners solution but failed <br /> 

Tuesday 31 May 2022 <br />
Jeff Chen: No work done at home bc of meeting, but helped gil in class with fixing Cube<br /> 
Gil Zheng: Started working on the semi-3d visualiser <br /> 
<br /> 

Wednesday 1 June 2022 <br />
Jeff Chen: Wrote up a method to solve white corners, but ended up being scrapped because I referenced rotations from (broken at the time) buttons, leading me to have wrong rotations and a broken method. Fixed up buttons for proper rotations<br /> 
Gil Zheng: Continued to work on the semi-3d visualizer, got the top side of the Cube to work<br /> 
<br /> 

Thursday 2 June 2022 <br />
Jeff Chen: Finished white corners, debugged the hell out of it<br /> 
Gil Zheng: Rewrote the top side to fix the rotations and started working on the right side<br /> 
<br />  

Friday 3 June 2022 <br />
Jeff Chen: Continued to revamp the cube and started with poppy<br />
Gil Zheng: Finished one of the visualizer and got the mode switching to work <br /> 
<br /> 

Saturday 4 June 2022 <br/>
Jeff Chen: Totally rewrote solve middle layer and finished writing solve using the beginner's method <br/>
Gil Zheng: Continued working on arrows to pop up when you hover over the buttons and made the arrows transparent<br /> 
<br />  

Sunday 5 June 2022 <br/>
Jeff Chen: <br/>
Gil Zheng: Finished L, L', R, R', M, M', X, and X' arrows <br /> 
<br /> 

Monday 6 June 2022 <br/>
Jeff Chen: <br/>
Gil Zheng: Finished the arrows for the U rotation and merged to main for Jeff to fix a bug<br /> 
<br /> 

Tuesday 7 June 2022 <br/>
Jeff Chen: Began working on solution optimizer, not much work because of math final<br/>
Gil Zheng: Continued working on the hovering arrows for the first mode <br /> 
<br /> 

Wednesday 8 June 2022 <br/>
Jeff Chen: Continued working on solution optimizer, not much work because of math final<br/>
Gil Zheng: Did E/E' and Z/Z' arrows <br /> 
<br /> 

Thursday 9 June 2022 <br/>
Jeff Chen: Finished solution optimizer<br/>
Gil Zheng: Finished the hovering arrows for the first mode<br /> 
<br /> 

Friday 10 June 2022 <br/>
Jeff Chen:<br/>
Gil Zheng: Finished the hovering arrows for the 2nd mode<br /> 
<br /> 

Saturday 11 June 2022 <br/>
Jeff Chen: Started and finished face color editor, user can now edit cube to match a real life cube, and will not run if invalid number of colors<br/>
Gil Zheng: Started working on the third mode of the cube<br /> 
<br /> 

Sunday 12 June 2022 <br/>
Jeff Chen: Added printScramble toggle to toggle if the scramble is printed, as well as removed unusued variables<br/>
Gil Zheng: Finished adding all the arrows and highlighting for the third mode<br /> 
<br /> 
