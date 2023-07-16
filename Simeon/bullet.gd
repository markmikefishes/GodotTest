extends CharacterBody2D

@export var SPEED: int

var started = false

func _ready():
	var tank = get_tree().get_root().find_child('tank_CharacterBody2D', true, false)
	tank.connect('shot',start)

func start(angle):
	if not started:
		rotation = angle
		velocity = Vector2.from_angle(rotation) * SPEED
		started = true

func _physics_process(delta):
	move_and_slide()
