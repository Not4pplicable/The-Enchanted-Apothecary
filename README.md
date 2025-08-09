The Enchanted Apothecary
A roguelike dungeon crawler with a day/night cycle:

Night → Explore procedurally generated dungeons, fight enemies, and collect ingredients.

Day → Brew and sell tea for gold, upgrade your shop, and prepare for deeper dungeon runs.

Devlog Timeline
Day 1 – Project Setup & Brainstorming
Finalized the core game concept: dungeon crawling at night, tea shop management during the day.

Decided to use Godot 4 for development.

Installed Godot and set up the project folder structure (Player/, Sprites/, Scripts/).

Created initial GitHub repository and .gitignore for Godot projects.

Implemented basic player movement script in a test scene.

Day 2 – Animation & State Machine
Created IdleState and MoveState scripts to manage player animations and movement logic using a state machine pattern.

Added directional animations:

Idle → up, down, left, right

Walking → up, down, left, right

Imported and configured sprite sheets in AnimatedSprite2D with proper frame separation.

Fixed animation naming mismatches that caused playback issues.

Converted to typed variables in scripts to remove Variant warnings.

Began learning state machine structure for cleaner future gameplay features.

Troubleshot Git/GitHub sync issues and updated repository with latest changes.
