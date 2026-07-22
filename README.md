# starter-game-godot

> A Skilluv starter — Godot 4.3+ / GDScript. Small 2D platformer with player, coins, HUD, and unit tests via GUT.

[![CI](https://github.com/skilluv-community/starter-game-godot/actions/workflows/ci.yml/badge.svg)](https://github.com/skilluv-community/starter-game-godot/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)
[![Skilluv](https://img.shields.io/badge/skilluv-community-emerald)](https://skilluv.io)

## English

### What this is

A minimal but complete Godot 4.3 project structured the way you'd start a real game:

- `CharacterBody2D` player with horizontal move + jump + gravity
- `Area2D` coins that emit a signal when collected
- `CanvasLayer` HUD listening to that signal via typed connections
- One scene assembled from three sub-scenes
- GUT test scaffold for headless unit tests
- Uses `PlaceholderTexture2D` so the game runs without any external assets

### Quickstart

1. Install [Godot 4.3](https://godotengine.org/download) (Standard or C# — this starter is pure GDScript)
2. Open `project.godot` in the Godot editor
3. Press `F5` (Run project)

Controls: `A` / `D` or arrows to move, `Space` to jump.

### Structure

```
project.godot                  Godot project config + input map
icon.svg                       Editor icon
scenes/
  main.tscn                    Root scene (Player + HUD + Coins + Ground)
  player.tscn                  Player scene
  coin.tscn                    Coin scene
  ui/hud.tscn                  HUD (score label)
scripts/
  main.gd
  player.gd
  coin.gd
  ui/hud.gd
tests/gut/                     GUT unit tests (install GUT via AssetLib)
assets/{sprites,sounds}/       Placeholders — replace with CC0 assets
```

### Docs

- [`docs/en/getting-started.md`](./docs/en/getting-started.md)
- [`docs/en/architecture.md`](./docs/en/architecture.md)

---

## Français

Starter Godot 4.3 : petit platformer 2D avec joueur, pièces, HUD et scaffold GUT.

Voir [`docs/fr/getting-started.md`](./docs/fr/getting-started.md).

Ouvrir `project.godot` dans Godot 4.3, presser `F5`.

---

## License

MIT — see [LICENSE](./LICENSE).
