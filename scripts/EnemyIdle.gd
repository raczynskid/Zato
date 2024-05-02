extends State

@export
var search_state : State

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
