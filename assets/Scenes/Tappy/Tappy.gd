extends CharacterBody2D


const JUMP_FORCE = -350.0


# Get the gravity.
var _gravity: float = ProjectSettings.get('physics/2d/default_gravity')
var _jumped: bool = false


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('jump'):
		_jumped = true
		

func _physics_process(delta: float) -> void:
	# The body fall down with gravity
	velocity.y += _gravity * delta
	
	# Handle jump.
	if _jumped:
		velocity.y = JUMP_FORCE
		_jumped = false
	move_and_slide()


#func fly(delta: float) -> void:
	## The body fall down with gravity
	#velocity.y = delta * _gravity
	#
	#
	#if Input.is_action_just_pressed('jump') == true:
		#velocity.y = JUMP_VELOCITY
	#
