extends Node

var game_start = preload("res://scenes/game_start.tscn")
var title_screen = preload("res://scenes/title_screen.tscn")
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
	
func to_title():
	get_tree().change_scene_to_packed(title_screen)
