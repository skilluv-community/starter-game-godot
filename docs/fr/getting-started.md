# Démarrage — starter-game-godot

## Prérequis

- Godot 4.3+ (Standard, pas besoin de C#)
- Optionnel : `godot` dans le `PATH` pour les targets Makefile

## Ouvrir le projet

1. Lancer Godot 4.3.
2. **Import** → `project.godot` → **Import & Edit**.
3. `F5` pour lancer la scène principale.

Contrôles : `A`/`D` ou flèches pour bouger, `Space` pour sauter.

## Tests unitaires (GUT)

1. `AssetLib` → chercher `GUT` → installer.
2. Activer le plugin dans `Project → Project Settings → Plugins`.
3. Lancer : `godot --headless --path . -s res://addons/gut/gut_cmdln.gd -gdir=res://tests/gut -gexit`

Ou : `make test`.

## Export

### Web (HTML5)

`Project → Export → Add → Web`, output dans `builds/web/`.

CLI : `make export-web`.

### Linux

`make export-linux` → binaire dans `builds/linux/`.

## Assets

Le starter utilise `PlaceholderTexture2D` (rectangles colorés). Remplacer par des sprites CC0 (OpenGameArt, Kenney).
