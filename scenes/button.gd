extends Button

#@export var game_start: PackedScene

func _on_pressed():
	#get_tree().change_scene_to_packed(game_start)
	get_tree().change_scene_to_file("res://scenes//game_start.tscn")
