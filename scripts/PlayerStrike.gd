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

var cooldown_setting = 0.1
var cooldown = cooldown_setting

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
	# cound down ticker to make next strike possible
	parent.debug3.text = str(int(strike_locked))
	parent.debug2.text = str(cooldown)
	
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
	if Input.is_action_just_pressed("ui_accept"):
		if cooldown <= 0:
			continue_strike = true
	return null 

func _on_animated_sprite_2d_animation_finished():
	is_done = true

func _on_hurtbox_area_entered(area):
	parent.hurtbox.set_deferred("monitoring", false)
	if area.get_owner().is_in_group("Enemy"):
		area.get_owner().get_hit(str(parent.animations.animation))

