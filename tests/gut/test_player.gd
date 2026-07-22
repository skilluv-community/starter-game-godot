extends GutTest

# Requires the GUT plugin (https://github.com/bitwes/Gut) enabled in Project Settings.
# Install via the AssetLib inside the Godot editor.

func test_player_starts_with_zero_coins() -> void:
    var player = load("res://scenes/player.tscn").instantiate()
    add_child(player)
    assert_eq(player.coins, 0, "player should start with 0 coins")
    player.queue_free()


func test_collect_coin_emits_signal() -> void:
    var player = load("res://scenes/player.tscn").instantiate()
    add_child(player)
    watch_signals(player)
    player.collect_coin()
    assert_signal_emitted_with_parameters(player, "coin_collected", [1])
    assert_eq(player.coins, 1)
    player.queue_free()
