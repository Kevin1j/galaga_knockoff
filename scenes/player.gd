extends CharacterBody2D


@onready var charAnim = $AnimatedSprite2D
@export var speed = 1500
@export var bullet_scene: PackedScene
@onready var bullet_spawn = $BulletSpawn
var cooldown = false



func _ready():
	charAnim.play("default")
	
	
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction.normalized() * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	if Input.is_action_just_pressed("shoot") and cooldown == false: #delay the next shot by .5 seconds with cooldown var
		fire_bullet()
		cooldown = true #on cooldown
		await get_tree().create_timer(.5).timeout
		cooldown = false #off cooldown
		

func fire_bullet():
	var bul = bullet_scene.instantiate()
	bul.global_position = bullet_spawn.global_position
	get_tree().root.call_deferred("add_child", bul)
	
	
	
	
