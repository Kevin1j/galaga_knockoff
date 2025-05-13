extends Node


var score = 0
var achievements = {
	"kill_25": false,
	"kill_50": false,
	"kill_100": false
	}


func add_score(amount):
	score += amount
