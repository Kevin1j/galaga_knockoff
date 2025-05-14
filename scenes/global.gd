extends Node

var game_start = preload("res://scenes/game_start.tscn")
var score = 0
var achievements = {
	"kill_25": false,
	"kill_50": false,
	"kill_100": false
	}


func add_score(amount):
	score += amount
	


func begin():
	get_tree().change_scene_to_packed(game_start)
	
