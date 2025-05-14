extends Button

#@export var game_starting: PackedScene

func _on_pressed():
	#get_tree().change_scene_to_packed(game_starting)
	#get_tree().change_scene_to_file("res://scenes//game_start.tscn")
	Global.begin()
