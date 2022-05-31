## Jeff Chen & Gil Zheng

# Gujixers’ Rubik's Cube Solver

What’s the point of learning how to solve a Rubik’s Cube when you can use a computer program to do it for you? 

This program will allow users to input moves to a Rubik’s cube, visualized to the user as a net. Users will be able to scramble and solve a cube, as well as input specific moves to the cube. This program will use Processing and solve the Rubik’s Cube, as well as show the user what steps are necessary. Users should know the basic cube notations (F, R, U, L, B, D and F’, R', U', L', B', D').

Keybinds: <br/>
Q/W/E/R/T/Y for L/R/U/D/F/B <br/>
A/S/D/F/G/H for L'/R'/U'/D'/F'/B' <br/>

https://docs.google.com/document/d/1BXVDlJIRH7PimkvV02koKximVJbK5jmj-6kPyB3UdCo/edit <br />
 **Development Log** <br />
Monday 23 May 2022 <br />
Jeff Chen: <br />
Began making Piece Class <br />
Gil Zheng: <br />
Started the Cube class and created all the rotations for the cube. <br />

Tuesday 24 May 2022 <br />
Jeff Chen: <br />
Finished Piece class, moved on to make Cube class work correctly with Piece class <br />
Gil Zheng: <br />
Started the Driver, created all the variables and started working on the display of the cube. <br />

Wednesday 25 May 2022 <br />
Jeff Chen: <br />
Began working on Solve, translating a python-based beginner's method for solving, helped in dev of Driver by fixing up mistakes and adding more movements and correcting wrong rotations <br />
Gil Zheng: <br />
Created methods in the drivers that allowed for user interaction, finished the update method and it's helper methods in order to keep refreshing display <br />
Thursday 25 May 2022 <br />
Jeff Chen: <br />
Finished driver to display the Cube as well as buttons to interact with cube, including reset, scramble, and moves
Gil Zheng: <br />

Saturday 28 May 2022 <br />
Jeff Chen: <br />
Researched different implementations of beginner's algorithm, since the python one failed, settled on a java based on to take inspiration from <br />

Sunday 29 May 2022 <br />
Jeff Chen: <br />
Java method required heavy, heavy recursion not possible in processing, and so failed, began writing a method that directly translated beginner's method, without recursion<br /> 
Gil Zheng: <br /> 
Tried to implement a solution, but failed. Added MES and XYZ and added the display for it <br />

Monday 30 May 2022 <br />
Jeff Chen: <br />
Began new implementation for solving beginner's algorithm, finished solving edge pieces for first, second, and partially third layer<br /> 
Gil Zheng: <br /> 
Attempted a white corners solution but failed
