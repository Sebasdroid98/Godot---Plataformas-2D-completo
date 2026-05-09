extends Area2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var collision = $CollisionShape2D
@onready var pickup_sound = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		# Se quita la moneda visualmente
		body.add_coins()
		animated_sprite.visible = false
		collision.disabled = true
		
		# Se inicia el sonido
		pickup_sound.play()
		
		# Se borra la moneda por completo
		pickup_sound.finished.connect(_on_sound_finished)

func _on_sound_finished():
	queue_free()
