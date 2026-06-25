extends Control


# Loads the scene into memory when this script is loaded.
var GAME = load("uid://ckvjtakbdqwfr")


func _unhandled_input(event: InputEvent) -> void:
	# Checks if the player pressed the "jump" action.
	if event.is_action_pressed("jump"):
		# Changes to the loaded game scene.
		get_tree().change_scene_to_packed(GAME)
