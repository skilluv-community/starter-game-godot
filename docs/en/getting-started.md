# Getting started — starter-game-godot

## Prerequisites

- Godot 4.3+ (Standard build; C# not required)
- Optional: `godot` on your `PATH` to use the Makefile targets

## Opening the project

1. Launch Godot 4.3.
2. Click **Import**, browse to this repo's folder, select `project.godot`, click **Import & Edit**.
3. Press `F5` to run the main scene.

Controls: `A`/`D` or arrow keys to move, `Space` to jump.

## Running unit tests (GUT)

1. Inside the Godot editor, go to `AssetLib` → search for `GUT` → download and install.
2. Enable the addon in `Project → Project Settings → Plugins`.
3. Run: `godot --headless --path . -s res://addons/gut/gut_cmdln.gd -gdir=res://tests/gut -gexit`

Or from the Makefile: `make test`.

## Exporting

### Web (HTML5)

In Godot: `Project → Export → Add → Web`. Set an export path under `builds/web/`.

From the CLI (once presets are configured):

```bash
make export-web
```

### Linux

```bash
make export-linux
```

The output binary lands in `builds/linux/game.x86_64`.

## Assets

The starter renders coloured rectangles (`PlaceholderTexture2D`) so it runs without any external files. Replace them with CC0 sprites from OpenGameArt or Kenney and update the corresponding scene textures.
