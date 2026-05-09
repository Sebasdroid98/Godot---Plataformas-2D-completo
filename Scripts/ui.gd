extends CanvasLayer


@onready var coin_label = $Control/Label

func set_coins(amount):
	coin_label.text = str(amount)


func _on_btn_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
