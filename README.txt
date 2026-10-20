COIN RUSH - STARTER PROJECT (Game Jam Speed Kit)
================================================
Guide: https://guide.justfahad.me/game-jam-overview/

THE GAME
  Walk around an arena, collect 5 coins, avoid the red swinging box.
  Right now everything is a placeholder shape on purpose: fun first, art later.

OPEN IT
  1. Godot 4.6 -> Import -> pick this folder's project.godot -> Import & Edit.
  2. Wait for the import bar (bottom-right) to finish.
  3. Press F5. You'll see a dark arena with a blue box. It can't move yet.
     That is correct - Step 1 of the guide gives it a script.

WHAT'S IN HERE
  scenes/main.tscn    The arena, 5 coins, the hazard, the player and the HUD
  scenes/player.tscn  The blue box
  scenes/coin.tscn    One coin (an Area2D). Instanced 5 times in main
  scenes/hazard.tscn  The red box (an Area2D)
  scripts/            4 files you fill in during Step 1, plus 2 that are ready:
                      game_state.gd (the score; an autoload) and hud.gd
  CREDITS.txt         Fill it in as you add assets (Step 2)

Godot creates a hidden .godot/ folder the first time you open the project.
Don't delete it and don't copy it between computers.
