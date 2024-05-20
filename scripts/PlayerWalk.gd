extends State

@export
var idle_state : State
@export
var strike_state : State
var input_direction = Vector2.ZERO
var last_orientation = Vector2.ZERO

func enter() -> void:
	super()

func exit() -> void:
	return

func process_input(_event: InputEvent) -> State:
	return null
	
func process_frame(_delta: float) -> State:
	return null

func process_physics(_delta: float) -> State:
	input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if Input.is_action_just_pressed("ui_accept"):
		return strike_state
		
	if input_direction.x:
		parent.scale.x = parent.scale.y * (-1 if input_direction.x <0 else 1)
		
	elif not input_direction:
		return idle_state
		
	parent.velocity = input_direction * parent.speed
	parent.move_and_slide()
	return null
