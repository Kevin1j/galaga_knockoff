extends RigidBody2D

@export var velocity = Vector2.ZERO

func _ready():
	linear_velocity = velocity
