extends Control


@onready var game_over_label: Label = $MarginContainer/GameOverLabel


func _unhandled_input(event: InputEvent) -> void:
		# Checks if the player pressed the "exit" action.
	if event.is_action_pressed("exit"):
		# Changes to the loaded main scene.
		GameManager.load_main_screen()


func _ready() -> void:
	SignalHub.froggy_died.connect(game_over)


func game_over() -> void:
	game_over_label.show()
