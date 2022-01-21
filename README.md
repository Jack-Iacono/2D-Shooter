# 2D-Shooter tech demo
Thank you for taking the time to view my project, hopefully it does not let you down

The goal of this game was to experiment with the interaction between guns and the player as well as the environment around them

# Features

## 3 Gun Types with unique damage and recoil patterns
- Full-Auto
- Semi-Auto
- Burst

## Interactable Objects
- Destroyable Walls
- Test Dummies

## Enemies!!!
- Basic Turret
- "Walking" Turret

## Controls
- WASD Movement
- Left-Click to shoot
- Mouse Wheel changes weapons

# Technical Talk

This section is more for me than anyone else as I would like to describe the reasoning behind making this project as well as the way that I went about it

## Why a 2D shooter
This genre is not one that I have experimented with in the past and I felt that there was a lot of things that I could learn from this project. 
If you have already tried my basic platformer then you may have noticed the introduction of a gun in one of the levels, this concept worked well enough, but I wanted to futher this

## Recoil and Moving the player
One feature that I was not willing to leave out was recoil when firing a given gun, this recoil would serve as a detriment or a benefit in given situations as it would push you in the opposite direction that you were firing, but would also push you into the air if used properly
The quest to find the best way to calculate this recoil lead me through various different itterations, but ultimately I decided to make the recoil only apply if the angle at which the player would move after firing would not push it directly into a wall.

## The Turrets (Probably my favorite part)
These turrets will only point at you if they have a line of sight to you, this is achieved by having them first find the angle that they would need to aim if the player if they could see it. Then a series of pounts are tested in order to see if a wall is intersecting with the line of sight, if so the turret would not move to point at the player. 


