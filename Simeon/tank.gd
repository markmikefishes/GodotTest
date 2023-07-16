# Just a peaceful tank, no harm :D

extends CharacterBody2D

@export var SPEED: int # arbitary
@export var TURN_SPEED: float # Hertz
var bullet_scene = preload("res://Simeon/bullet.tscn")
signal shot

func _ready():
	pass

func shoot():
	var bullet = bullet_scene.instantiate()
	get_tree().get_root().add_child(bullet)
	emit_signal('shot', rotation)
	bullet.position = find_child('Marker2D', true, false).global_position

func _physics_process(delta):
	var deltaNormal = delta * 60
	
	var turnInput = Input.get_axis('left', 'right')
	var driveInput = Input.get_axis('backward', 'forward')
	var shootInput = Input.is_action_pressed('shoot')
	
	rotation += turnInput * deltaNormal * TURN_SPEED * PI/30
	velocity = driveInput * Vector2.from_angle(rotation) * deltaNormal * SPEED 
	
	if shootInput and $Shoot_Timer.time_left == 0:
		$Shoot_Timer.start()
		shoot()
	
	move_and_slide()
