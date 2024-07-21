extends State

@export
var walk_state: State
@export
var strike_state: State

var input_direction : Vector2

func enter() -> void:
	super()
	
func process_input(_event: InputEvent) -> State:
	parent.animations.flip_h = parent.orientation
	input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_direction:
		return walk_state
		
	if Input.is_action_just_pressed("ui_accept"):
		return strike_state
		
	return null
