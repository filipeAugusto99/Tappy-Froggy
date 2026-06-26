extends Control

@onready var game_over_label: Label = $MarginContainer/GameOverLabel
@onready var press_jump_label: Label = $MarginContainer/PressJumpLabel
@onready var timer: Timer = $Timer
@onready var sound: AudioStreamPlayer = $Sound

var can_return_to_main: bool = false

func _unhandled_input(event: InputEvent) -> void:
		# Checks if the player pressed the "exit" action.
	if event.is_action_pressed("exit"):
		# Changes to the loaded main scene.
		GameManager.load_main_screen()

	if  can_return_to_main and event.is_action_pressed("jump"):
		GameManager.load_main_screen()

func _ready() -> void:
	SignalHub.froggy_died.connect(game_over)


func game_over() -> void:
	game_over_label.show()
	sound.play()
	timer.start()
	
	
func _on_timer_timeout() -> void:
	can_return_to_main = true
	game_over_label.hide()
	press_jump_label.show()
	
	
