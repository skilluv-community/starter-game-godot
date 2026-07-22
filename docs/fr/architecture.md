# Architecture — starter-game-godot

## Choix opinionated

### 1. GDScript pur, pas de C#

GDScript compile dans l'éditeur, zéro toolchain externe. C# uniquement si le projet le justifie.

### 2. Scènes découpées en 3 sous-scènes

- `player.tscn` — perso réutilisable
- `coin.tscn` — instancié 2× dans `main.tscn`
- `ui/hud.tscn` — découplé du monde

`main.tscn` instancie et connecte les signaux dans `main.gd`. Pattern "prefab" Godot.

### 3. Signaux typés

`signal coin_collected(total: int)`. Callback typé côté receiver. Erreurs de connexion détectées à l'édition.

### 4. Placeholder textures

`PlaceholderTexture2D` évite les binaires dans le starter et garde le repo léger.

### 5. `unique_name_in_owner = true`

Références cross-tree (`%Player`, `%HUD`) via noms uniques.

### 6. GUT pour les tests

Framework de test Godot de facto. Tests sous `tests/gut/`.

## Hors scope

- Save/load
- Transitions de niveau
- Multiplayer
- Vrais graphiques / audio
