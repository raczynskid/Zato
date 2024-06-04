extends State

@export
var idle_state : State
@export
var attack_state : State
@export
var attack2_state : State
@export
var search_state : State
@export
var follow_state : State

@export
var backtrack_speed : int = 30

var player_target
var direction : Vector2

var timer_setting_min: float = 0.25
var timer_setting_max: float = 2.0
var timer


	
func player_position() -> Vector2:
	# calculate direction vector to player
	return parent.global_position.direction_to(player_target.global_position)
	
func in_range() -> bool:
	return parent.raycast_short.get_collider().is_in_group("Player")
		
func enter() -> void:
	super()
	# reset backtrack timer
	var rng = RandomNumberGenerator.new()
	var random_timer = rng.randf_range(timer_setting_min, timer_setting_max)
	timer = random_timer
	player_target = parent.player_target
	# pass player reference to global

func exit() -> void:
	return

func process_physics(delta: float) -> State:
	# when ticker elapses, return to following player
	if timer > 0:
		timer -= delta
	else:
		# when timer elapses, see if player is still in short range
		var collider = parent.raycast_short.get_collider()
		# if player is following during backtrack, attack immediately
		if collider:
			if collider.is_in_group("Player"):
				return attack_state
		# if player not in range, resume normal follow state
		else:
			var rand_bool = bool_randomize()
			if rand_bool:
				return attack2_state
		return follow_state
		
	# establish vector to player's position
	direction = player_position()
	# rotate the sprite
	parent.scale.x = parent.scale.y * (1 if direction.x <0 else -1)
	# flip the vector to player position to move away
	parent.velocity = Vector2(direction.x * -1, direction.y) * backtrack_speed
	parent.move_and_slide()
	return null
