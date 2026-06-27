extends CanvasLayer


@export var game: PackedScene
@export var main: PackedScene


@onready var animation_player: AnimationPlayer = $AnimationPlayer


var _next_scene: PackedScene

func change_to_next() -> void:
	get_tree().change_scene_to_packed(_next_scene)


func start_transition(next_scene: PackedScene) -> void:
	_next_scene = next_scene
	animation_player.play("fade")


# Load the game scene
func load_game_screen() -> void:
	start_transition(game)

# Load the main scene
func load_main_screen() -> void:
	start_transition(main)
