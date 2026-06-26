extends Node


@export var pipes_scene: PackedScene


@onready var upper_spawn: Marker2D = $UpperSpawn
@onready var lower_spawn: Marker2D = $LowerSpawn
@onready var pipes_holder: Node = $PipesHolder


func _ready() -> void:
	spawn_pipes()
	

# This function spawn the pipes into a range of upper_spawn and lower_spawn
func spawn_pipes() -> void:
	var new_pipe: Pipes = pipes_scene.instantiate()
	
	# the pipes do not exit this limits
	var pos_y: float = randf_range(
		upper_spawn.position.y,
		lower_spawn.position.y
	)

	# create a vector type
	new_pipe.position = Vector2(upper_spawn.position.x, pos_y)	
	# create a new pipe
	pipes_holder.add_child(new_pipe)


# call the function spawn_pipes every 1.2 seconds
func _on_timer_timeout() -> void:
	spawn_pipes()
