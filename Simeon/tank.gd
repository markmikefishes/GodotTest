# Just a peaceful tank, no harm :D

extends CharacterBody2D

@export var SPEED: int # arbitary
@export var TURN_SPEED: float # Hertz

func _physics_process(delta):
	var deltaNormal = delta * 60
	var turnInput = Input.get_axis('left', 'right')
	var driveInput = Input.get_axis('backward', 'forward')
	
	rotation += turnInput * deltaNormal * TURN_SPEED * PI/30
	velocity = driveInput * Vector2.from_angle(rotation) * deltaNormal * SPEED 
	
	move_and_slide()
