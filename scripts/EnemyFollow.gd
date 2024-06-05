extends State
@export
var attack2_cooldown : float = 3.0

@export
var idle_state : State
@export
var attack_state : State
@export
var attack2_state : State
@export
var search_state : State
@export
var backtrack_state : State
@export
var follow_speed : int = 30

var direction : Vector2

var timer_setting: float = 10.0
var timer

var attack2_timer : float = attack2_cooldown
	
func player_position() -> Vector2:
	# calculate direction vector to player
	return parent.global_position.direction_to(parent.player_target.global_position)
	
func in_range() -> bool:
	var collider = parent.raycast_short.get_collider()
	if collider:
		return collider.is_in_group("Player")
	return false

func enter() -> void:
	super()
	# reset follow timer
	timer = timer_setting

func exit() -> void:
	return

func process_physics(delta: float) -> State:
	# when ticker elapses, return to search state
	if timer > 0:
		timer -= delta
	else:
		return search_state

	if attack2_timer > 0:
		attack2_timer -= delta

	if parent.counter_mode:
		# if this will be a counter-strike
		# activates when hit
		if parent.next_strike_delay > 0:
			# wait
			parent.next_strike_delay -= delta
		else:
			parent.counter_mode = false
			return attack_state
	else:
		# normal behavior
		if in_range():
		# if player enters range, pick random 
		# 50% chance to backtrack or attack
			if bool_randomize(1):
				return backtrack_state
			else:
				return attack_state
		else:
			if bool_randomize(1) and attack2_timer <= 0:
				attack2_timer = attack2_cooldown
				return attack2_state
	# establish vector to player's position
	direction = player_position()
	# rotate the sprite
	parent.scale.x = parent.scale.y * (1 if direction.x <0 else -1)
	parent.velocity = direction * follow_speed
	parent.move_and_slide()
	return null
