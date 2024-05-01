extends State

@export
var idle_state : State
@export
var walk_state : State

var is_done : bool = false

func enter() -> void:
	super()

func exit() -> void:
	is_done = false

func process_physics(delta: float) -> State:
	if is_done:
		return walk_state
	else:
		return null


func _on_animated_sprite_2d_animation_finished():
	is_done = true
