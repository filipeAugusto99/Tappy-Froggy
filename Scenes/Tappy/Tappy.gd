extends CharacterBody2D


const JUMP_FORCE = -350.0


@onready var animation_player: AnimationPlayer = $AnimationPlayer


# Get the gravity.
var _gravity: float = ProjectSettings.get('physics/2d/default_gravity')
# Control when the play jump
var _jumped: bool = false


# Called when an input event was not handled by the UI or another node.
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
		animation_player.play("fly")
	
	# this method moves the CharacterBody while automatically handling collisions
	# and sliding along walls and slopes.
	move_and_slide()
	
