extends Control


@onready var highscore_label: Label = $MarginContainer/HighscoreLabel


func _unhandled_input(event: InputEvent) -> void:
	# Checks if the player pressed the "jump" action.
	if event.is_action_pressed("jump"):
		# Changes to the loaded game scene.
		ComplexChange.load_game_screen()


func _ready() -> void:
	get_tree().paused = false
	highscore_label.text = "%04d" % ScoreManager.high_score
