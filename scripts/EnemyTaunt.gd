extends State

@export
var search_state : State

@export
var idle_timer: float = 1.0

func enter() -> void:
	super()
	
func exit() -> void:
	parent.animations.flip_h = true
	return

func process_input(event: InputEvent) -> State:
	return null
	
func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	if is_done:
		return search_state
	parent.move_and_slide()
	return null


func _on_animated_sprite_2d_animation_finished():
	is_done = true
