extends Control


func _on_btn_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Map.tscn")


func _on_btn_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Options.tscn")


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
