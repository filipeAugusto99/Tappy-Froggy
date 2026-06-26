extends Control


func _unhandled_input(event: InputEvent) -> void:
	# Checks if the player pressed the "jump" action.
	if event.is_action_pressed("jump"):
		# Changes to the loaded game scene.
		GameManager.load_game_screen()


func _ready() -> void:
	get_tree().paused = false
