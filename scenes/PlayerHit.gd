extends State

@export
var next_state: State

func enter():
	is_done = false
	parent.animations.play(animation_name)

func exit() -> void:
	is_done = false

func process_input(_event: InputEvent) -> State:
	return null

func process_frame(_delta: float) -> State:
	return null

func process_physics(_delta: float) -> State:
	if is_done:
		return next_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
