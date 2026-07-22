# Architecture — starter-game-godot

## Opinionated choices

### 1. Pure GDScript, no C#

GDScript compiles inside the editor, has no toolchain outside Godot, and is what most tutorials show. Switch to C# only when your project size justifies it — the GDScript-only setup means anyone with the Godot editor can run this today.

### 2. Scenes split into three sub-scenes

- `player.tscn` — reusable character
- `coin.tscn` — instanced twice in `main.tscn`
- `ui/hud.tscn` — decoupled from the world

`main.tscn` instances them and wires signals in `main.gd`. This is the "prefab" pattern Godot uses.

### 3. Typed signals

`signal coin_collected(total: int)` is declared with an explicit int arg. The receiving script uses a typed callback. This catches connection errors at editor time.

### 4. Placeholder textures

`PlaceholderTexture2D` avoids shipping binary assets in the starter and keeps the repo small. When you add real sprites, replace them scene-by-scene.

### 5. `unique_name_in_owner = true`

Nodes referenced across the scene tree (`%Player`, `%HUD`, `%ScoreLabel`) use unique names, so scripts don't break when the hierarchy changes.

### 6. GUT for tests

GUT is the de-facto Godot testing framework. Tests live under `tests/gut/`, discoverable both from the editor and headless from CI.

## What's out of scope

- Save/load
- Level transitions (single scene only)
- Multiplayer
- Real graphics / audio
