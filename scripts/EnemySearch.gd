extends State

@export
var idle_state : State
@export
var input_direction = Vector2.ZERO
var last_orientation = Vector2.ZERO

func enter() -> void:
	super()

func exit() -> void:
	return

func process_input(event: InputEvent) -> State:
	return null
	
func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	parent.move_and_slide()
	return null
