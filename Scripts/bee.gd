extends Node2D

# Se mata a la abeja si se salta sobre ella
func _on_area_2d_top_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.velocity.y = -300
		queue_free()
 
# Muere el jugador si toca abajo de la abeja
func _on_area_2d_bottom_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().reload_current_scene()
