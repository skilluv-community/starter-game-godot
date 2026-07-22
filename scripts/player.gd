extends CharacterBody2D
class_name Player

## Simple platformer character: horizontal move + jump + gravity.

@export var speed: float = 220.0
@export var jump_velocity: float = -420.0
@export var gravity: float = 1200.0

signal coin_collected(total: int)

var coins: int = 0


func _physics_process(delta: float) -> void:
    if not is_on_floor():
        velocity.y += gravity * delta

    if Input.is_action_just_pressed("jump") and is_on_floor():
        velocity.y = jump_velocity

    var direction := Input.get_axis("move_left", "move_right")
    velocity.x = direction * speed

    move_and_slide()


func collect_coin() -> void:
    coins += 1
    coin_collected.emit(coins)
