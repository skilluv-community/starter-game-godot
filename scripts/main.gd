extends Node2D

@onready var player: Player = %Player
@onready var hud: CanvasLayer = %HUD


func _ready() -> void:
    player.coin_collected.connect(_on_coin_collected)


func _on_coin_collected(total: int) -> void:
    hud.set_score(total)
