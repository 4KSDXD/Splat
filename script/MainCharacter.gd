extends KinematicBody2D

var velocity = Vector2(0, 0)
const SPEED = 180
const GRAVITY = 15
const JUMP_FACTOR = -600
const PauseMenu = preload("res://scene//PauseMenu.tscn")

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
		$Sprite.play("animation_walk")
		$Sprite.flip_h = false
		
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
		$Sprite.play("animation_walk")
		$Sprite.flip_h = true
	else:
		$Sprite.play("animation_idle")
	velocity.y = velocity.y + GRAVITY
	
	if not is_on_floor():
		$Sprite.play("animation_jump")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FACTOR
		$JumpSound.play()
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)
	

func _on_FallArea_body_entered(body):
	Globals.coins = 0
	get_tree().change_scene("res://scene/World.tscn")

func _on_Portal_body_entered(body):
	get_tree().change_scene("res://scene/YouWon!.tscn")
