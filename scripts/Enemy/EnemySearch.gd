extends State

@export
var idle_state : State
@export
var attack_state : State
@export
var follow_state : State
@export
var search_speed : int = 50

var target : Vector2
var direction : Vector2

var timer_setting: float = 1.0
var timer

func randomize_direction() -> Vector2:
	var rng = RandomNumberGenerator.new()
	return Vector2(rng.randf_range(-1.0, 1.0), rng.randf_range(-1.0, 1.0)).normalized()
	
func player_detected() -> bool:
	var collider = parent.raycast.get_collider()
	if collider:
		return true
	return false
	
func wall_detected() -> bool:
	var collider = parent.raycast_short.get_collider()
	if collider:
		return collider.is_in_group("Walls")
	return false

func enter() -> void:
	super()
	direction = randomize_direction()
	timer = timer_setting

func exit() -> void:
	return

func process_input(_event: InputEvent) -> State:
	return null

func process_physics(delta: float) -> State:
	# check raycast if closing in to a wall
	if wall_detected():
		# flip direction if near a wall
		direction *=-1
		timer = timer_setting
	# flip sprite
	parent.scale.x = parent.scale.y * (1 if direction.x <0 else -1)
	
	# ticker to change random direction
	if timer >= 0:
		timer -= delta
	else:
		timer = timer_setting
		# after ticker elapses, choose new random direction
		direction = randomize_direction()
	parent.velocity = direction * search_speed
	parent.move_and_slide()
	
	# if player detected by the long raycast
	# transition to follow state
	if player_detected():
		return follow_state

	return null
