Project2: Robot and Object Simulation
Overview
This MATLAB project simulates the interaction between a robot and an object that starts at a random distance from the robot. The robot moves towards the object, and the object moves based on a random probability. The purpose of this simulation is to calculate the expected time (ET) it takes for the robot to catch the object under different movement strategies and probabilities.

Features
Two strategies for object and robot behavior:
Strategy 1: The object can stop, but the robot keeps moving towards the object.
Strategy 3: Both the object and the robot can stop at certain times.
User-defined number of simulations to determine the expected time more accurately.
Adjustable probability values to control how often the object moves left or right.
Optional plotting feature to visualize the positions of the robot and the object over time.
How It Works
The object starts at a random distance from the robot, selected from a predefined distance array.
The robot starts at position 0 and moves towards the object based on a random probability.
The user can choose between two strategies for how the robot and object behave:
Strategy 1: The object can stop, but the robot keeps moving.
Strategy 3: Both the object and robot can stop.
The simulation runs multiple times (user-defined) to calculate the expected time (ET) it takes for the robot to reach the object.
