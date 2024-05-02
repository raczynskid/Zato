extends State

@export
var idle_state : State
@export
var walk_state : State
@export
var next_strike : State

var is_done : bool = false
var continue_strike : bool = false

var cooldown_setting = 0.2
var cooldown = cooldown_setting

func enter() -> void:
	super()
	is_done = false
	continue_strike = false

func exit() -> void:
	# reset cooldown on state end
	cooldown = cooldown_setting

func process_physics(delta: float) -> State:
	# cound down ticker to make next strike possible
	if cooldown > 0:
		cooldown -= delta

	# on animation end, check if next attack has been queued
	if is_done:
		# if attack queued, proceed to next strike
		if continue_strike:
			return next_strike
		# if no attack queued, return to idle
		return walk_state
	
	# every frame, check if attack button pressed after ticker elapsed
	if Input.is_action_just_pressed("ui_accept") and cooldown <= 0:
		# if attack pressed in time window, queue next attack
		continue_strike = true
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true