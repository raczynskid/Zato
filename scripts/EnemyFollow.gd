extends State

@export
var idle_state : State
@export
var attack_state : State
@export
var search_state : State
@export
var follow_speed : int = 25

var player_target
var direction : Vector2

var timer_setting: float = 10.0
var timer
	
func player_position() -> Vector2:
	# calculate direction vector to player
	return parent.global_position.direction_to(player_target.global_position)

func enter() -> void:
	super()
	# reset follow timer
	timer = timer_setting
	# pass player reference to global
	var collider = parent.raycast.get_collider()
	if collider.is_in_group("Player"):
		player_target = collider

func exit() -> void:
	return

func process_physics(delta: float) -> State:
	# when ticker elapses, return to search state
	if timer > 0:
		timer -= delta
	else:
		return search_state
	# establish vector to player's position
	direction = player_position()
	# rotate the sprite
	parent.scale.x = parent.scale.y * (1 if direction.x <0 else -1)
	parent.velocity = direction * follow_speed
	parent.move_and_slide()
	return null
