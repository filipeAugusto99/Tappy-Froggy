extends Node


signal froggy_died
signal point_scored(score: int)


func emit_froggy_died() -> void:
	froggy_died.emit()
	
	
func emit_point_scored(score: int) -> void:
	point_scored.emit(score)
