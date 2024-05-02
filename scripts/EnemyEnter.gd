extends State

@export
var speed = 20
@export
var next_state : State

func pick_entry_side() -> Vector2:
	if parent.global_position.x > 0:
		return Vector2.LEFT
	else:
		parent.animations.flip_h = false
		return Vector2.RIGHT


func enter() -> void:
	super()
	parent.set_collision_mask_value(1, false)
	parent.velocity = pick_entry_side() * speed
	
func exit() -> void:
	parent.set_collision_mask_value(1, true)
	parent.velocity = Vector2.ZERO
	
func process_physics(delta: float) -> State:
	parent.move_and_slide()
	var x_pos = parent.global_position.x
	if (x_pos < 340 and x_pos > 200):
		parent.global_position.y -= 20
		parent.global_position.x -= 20
		return next_state
	elif (x_pos > 60 and x_pos < 200):
		parent.global_position.y -= 20
		parent.global_position.x += 20
		return next_state
	return null
