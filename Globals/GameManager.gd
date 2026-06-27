extends Node


# Loads the scene into memory when this script is loaded.
const GAME = preload("uid://ckvjtakbdqwfr")
const MAIN = preload("uid://d2iratgijia74")
const LOADING_SCREEN = preload("uid://30hy487x8tlw")


#region Original

## Load the game scene
#func load_game_screen() -> void:
	#get_tree().change_scene_to_packed(GAME)
	#
#
## Load the main scene
#func load_main_screen() -> void:
	#get_tree().change_scene_to_packed(MAIN)

#endregion


#region Simple Change

var _next_scene: PackedScene

func change_to_next() -> void:
	get_tree().change_scene_to_packed(_next_scene)


# Load the game scene
func load_game_screen() -> void:
	_next_scene = GAME
	get_tree().change_scene_to_packed(LOADING_SCREEN)
	

# Load the main scene
func load_main_screen() -> void:
	_next_scene = MAIN
	get_tree().change_scene_to_packed(LOADING_SCREEN)
#endregion
