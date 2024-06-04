extends State

@export
var idle_state : State
@export
var walk_state : State
@export
var next_strike : State
@export
var sound : Resource

var continue_strike : bool = false
var strike_locked : bool = false

var cooldown_setting = 0.02
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
	parent.hurtbox.monitorable = false

func process_physics(delta: float) -> State:
	parent.debug3.text = str(int(strike_locked))
	# cound down ticker to make next strike possible
	var animation_frame = parent.animations.get_frame()
	
	parent.debug2.text = str(cooldown)
	if cooldown > 0:
		cooldown -= delta

# check if golden frame moment
	if animation_frame == 1 and Input.is_action_just_pressed("ui_accept"):
		# if golden frame attack is not prevented by mashing earlier,
		# proceed to next strike immediately
		if not strike_locked:
			return next_strike

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
		# if attack pressed within the window, but before golden frame,
		# lock golden frame attack and only proceed after full animation
		#if animation_frame == 0:
		strike_locked = true
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
	strike_locked = false

func _on_hurtbox_area_entered(area):
	parent.hurtbox.monitoring = false
	if area.get_owner().is_in_group("Enemy"):
		area.get_owner().get_hit()
