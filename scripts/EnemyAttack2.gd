extends State

@export
var follow_state : State
@export
var die_state : State
@export
var sound : Resource

func enter() -> void:
	super()
	is_done = false
	parent.long_hurtbox_collider.disabled = false
	parent.enemyFX.stream = sound
	parent.enemyFX.play()

func exit() -> void:
	is_done = false
	parent.long_hurtbox_collider.disabled = true
	parent.enemyFX.stop()
	
func process_physics(delta: float) -> State:
	if parent.animations.get_frame() == 5:
		var hit_objects = parent.hurtbox.get_overlapping_areas()
		for hit_object in hit_objects:
			if parent.player_target == hit_object.get_owner():
				Signals.player_hit.emit()
				parent.long_hurtbox_collider.disabled = true
	if is_done:
		return follow_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
