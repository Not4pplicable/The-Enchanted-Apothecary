Devlog
Day 0 – Brainstorming the Idea (Aug 7, 2025)
Yesterday was all about the concept. I wanted to blend the action of a roguelike dungeon crawler with the calm management of running a shop. That’s where the mushroom tea shop idea came from.

Core loop I envisioned:

Night: Explore procedurally generated forest dungeons full of mushroom/spore/fungus enemies.

Day: Run a tea shop, brewing and selling teas from ingredients gathered at night.

Progression: Upgrade weapons, armor, and shop; unlock recipes; maybe hire helpers.

Inspiration:

Moonlighter for the dungeon/shop cycle

Enter the Gungeon for combat variety

Old Pokémon/Zelda for the music style

I also picked out pixel-art assets from CraftPix for the forest tiles and monsters, aiming for a colorful but adventurous feel. The long-term plan: sell first on PC (itch.io/Steam), console later if successful.

Day 1 – Project Setup & First Movement (Aug 8, 2025)
Today was the first coding day. I decided to use Godot 4 for its strong 2D workflow, no royalties, and simple exports. We restarted fresh to avoid broken references and set up a clean, organized repo.

What we accomplished:

Created a clean Godot project and .gitignore for version control.

Set up folder structure:

Copy
Edit
player/
  player.tscn
  scripts/Player.gd
  sprites/
Built the Player scene (CharacterBody2D + Sprite2D + CollisionShape2D).

Wrote movement script using Input.get_vector() and move_and_slide() in _physics_process().

Added playground.tscn as the main scene and instanced the Player.

Configured Input Map for WASD and arrow key movement.

Linked the project to GitHub and committed the initial working version.

Next steps:

Add TileMap and pixel-perfect camera so the player can explore a test level.

Start importing placeholder assets for the world.
