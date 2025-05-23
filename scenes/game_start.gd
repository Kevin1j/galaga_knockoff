extends Node2D


@export var enemy_scene: PackedScene
@export var title_screen: PackedScene
@onready var game_time = 0
@onready var score_label = $score_counter/Control/Label

func _ready():
	Global.score = 0
	randomize()
	
	
func _process(delta):
	score_label.text = "Score: " + str(Global.score)
	game_time += delta
	$EnemyTimer.wait_time = 1.5 - (game_time / 100)


func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	var x = randi_range(100,1400)
	var y = randi_range(-900, -1100)
	enemy.position = Vector2(x,y)
	call_deferred("add_child",enemy)
	


func _on_enemy_timer_timeout() -> void:
	pass # Replace with function body.


func _on_game_over_box_body_entered(body: Node2D) -> void:
	Global.to_title()
	
