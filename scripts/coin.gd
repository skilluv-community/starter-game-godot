extends Area2D
class_name Coin


func _on_body_entered(body: Node) -> void:
    if body is Player:
        (body as Player).collect_coin()
        queue_free()
