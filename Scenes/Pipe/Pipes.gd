class_name Pipes


extends Node2D


const SCROLL_VELOCITY: float = 120.0


@onready var score_sound: AudioStreamPlayer = $ScoreSound


func _physics_process(delta: float) -> void:
	# Scrolling the pipes
	#move_local_x(delta * -SCROLL_VELOCITY) <- is possible too
	position.x -= SCROLL_VELOCITY * delta


# This function ensures that the object pipes leave the game for not consume more memory
func die() -> void:
	queue_free()


# When the pipes exit the screen, emit this signal and the pipes "die"
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	die()

	
# Sometimes the signal _screen_exited doesn't work well, for ensure this, we create a timer
func _on_timer_timeout() -> void:
	die()


func _on_pipe_body_entered(body: Node2D) -> void:
	if body is Froggy:
		body.die()


func _on_laser_body_entered(body: Node2D) -> void:
	score_sound.play()
