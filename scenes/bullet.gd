extends Area2D


@export var speed = 1800
@export var left_half: PackedScene
@export var right_half: PackedScene


func _physics_process(delta: float) -> void:
	position.y -= speed * delta
	




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemies"):
		var velocity = body.linear_velocity
		split_enemy(body, velocity)
		Global.add_score(1)
		if Global.score >= 25: 
			Global.achievements["kill_25"] = true
		if Global.score >= 50:
			Global.achievements["kill_50"] = true
		if Global.score >= 100:
			Global.achievements["kill_100"] = true
		queue_free()


func split_enemy(enemy, momentum):
	var pos = enemy.global_position
	var left = left_half.instantiate()
	var right = right_half.instantiate()
	left.global_position = pos + Vector2(-10,0)
	right.global_position = pos + Vector2(10,0)
	left.velocity = momentum + Vector2(-300, -100)
	right.velocity = momentum + Vector2(300, -100)
	get_tree().current_scene.add_child(left)
	get_tree().current_scene.add_child(right)
	enemy.queue_free()
	
