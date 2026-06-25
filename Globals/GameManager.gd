extends Node


# Loads the scene into memory when this script is loaded.
const GAME = preload("uid://ckvjtakbdqwfr")
const MAIN = preload("uid://d2iratgijia74")


# Load the game scene
func load_game_screen() -> void:
	get_tree().change_scene_to_packed(GAME)
	

# Load the main scene
func load_main_screen() -> void:
	get_tree().change_scene_to_packed(MAIN)
