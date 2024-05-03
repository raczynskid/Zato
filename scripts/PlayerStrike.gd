extends State

@export
var idle_state : State
@export
var walk_state : State
@export
var next_strike : State
@export
var sound: Resource

var is_done : bool = false
var continue_strike : bool = false

var cooldown_setting = 0.2
var cooldown = cooldown_setting

var i = 1

func enter() -> void:
	super()
	is_done = false
	continue_strike = false
	parent.hurtbox.monitoring = true
	parent.playerFX.stream = sound
	parent.playerFX.play()

func exit() -> void:
	# reset cooldown on state end
	cooldown = cooldown_setting
	parent.hurtbox.monitoring = false

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


func _on_hurtbox_body_entered(body):
	print(body.get_name() + " hit " + str(i))
	i += 1
	parent.hurtbox.monitoring = false
