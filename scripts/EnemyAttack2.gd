extends State

@export
var follow_state : State
@export
var die_state : State

var is_done : bool = false

func enter() -> void:
	super()
	is_done = false

func exit() -> void:
	is_done = false
	
func process_physics(delta: float) -> State:
	if is_done:
		return follow_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
