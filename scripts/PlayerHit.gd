extends State

@export
var next_state: State
@export
var death_state: State

func enter():
	parent.hp -= 1
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
		if parent.hp <= 0:
			return death_state
		return next_state
	return null
