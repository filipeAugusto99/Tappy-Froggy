extends Node


var _score: int = 0
var high_score: int = 0:
	set(value):
		if value > high_score:
			high_score = value


func _ready() -> void:
	SignalHub.froggy_died.connect(on_froggy_died)
	

func on_froggy_died() -> void:
	high_score = _score
	reset_score()


func reset_score() -> void:
	_score = 0


func add_point() -> void:
	_score += 1
	SignalHub.emit_point_scored(_score)
	
