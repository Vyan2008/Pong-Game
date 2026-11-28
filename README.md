# Pong Game
This is a working version of Pong, where a player faces off against a computer and the first to score 10 points wins the game. 

# The Problem
There does not yet exist a working version of Pong with my own custom paddle and ball sizes and speeds, which I want there to be in order to create my own personalized version of that game.

# Tech Stack
This project uses the Godot Engine, Godot's built in programming language, GDScript, Godot's custom built-in physics engine and object libraries, and it uses in-memory storage. 

# Instructions for Running Project
Before trying to run the project, you first need to install Godot 4.7.2 for your device: https://godotengine.org/download/archive/4.7.2-stable/
You also need to ensure that you have Git installed.

In your terminal, run the following lines of code:
cd ~/Preferred_Path
such as cd~/Desktop
mkdir “Working Pong Game”
cd “Working Pong Game”
git clone https://github.com/Vyan2008/Pong-Game

In Godot, select Import, then navigate to the “Working Pong Game” folder you just created. Open the folder and select “Pong-Game” as the imported Github folder. After the project opens, click the play button on the top right of the screen to run the game. Close the running window and click the play button again to rerun the game. 

Examples of Input and Output 

Down arrow is pressed: Player paddle moves down
Up arrow is pressed: Player paddle moves up

# How it works
The main scene the project uses, the game scene, contains the player paddle, computer paddle, ball, and label. Each object has their own attached script, the game scene has its own script, and there is also a global script used so that different object-attached scripts can each access global variables. The player paddle takes the up and down arrow keys as input from the player. When the paddle first moves at the beginning of a round, the ball begins moving. The ball's velocity in a specific direction is inverted whenever it collides with either a ceiling or paddle. The difference between the ball's center y position and the colliding paddle's center y position determines the ball's angle after the collision. Whenever the ball moves off screen horizontally, the side it leaves the screen from determines whether the player or computer score increases by one and the round restarts, moving all objects back to their starting positions and setting their velocities to zero. A label in the middle of the screen constantly displays the current player and computer score. When either the player or computer score reaches ten, the scene changes from the game scene to the winning screen scene. The winner of the game is recorded and displayed by a label in the winning screen.
# Roadmap
[ x ] Working pong paddle that user can move 
[ x ] Moving ball that collides with the user pong paddle 
[ x ] Opposing paddle that moves up and down based on the ball position with a slight delay
[ x ] A score system and a working game where the ball position and speed resets after a point is scored
[ ] The addition of an easy, medium, hard, and hardcore difficulty, where each difficulty has larger ball speed increases and a shorter delay for the opposing paddle
[ ] Random ball speed mode where every time the ball is hit it has a random speed
[ ] A mode where the user controls reverse every time they hit the ball


