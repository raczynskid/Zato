extends State

@export
var follow_state : State
@export
var die_state : State
@export
var sound : Resource


func enter() -> void:
	is_done = false
	super()
	parent.enemyFX.stream = sound
	parent.enemyFX.play()
	parent.short_hurtbox_collider.disabled = false

func exit() -> void:
	is_done = false
	parent.short_hurtbox_collider.set_deferred("disabled", true)
	parent.enemyFX.stop()
	
func process_physics(_delta: float) -> State:
	if parent.animations.get_frame() == 3:
		var hit_objects = parent.hurtbox.get_overlapping_areas()
		for hit_object in hit_objects:
			if parent.player_target == hit_object.get_owner():
				Signals.player_hit.emit()
				parent.short_hurtbox_collider.disabled = true
	if is_done:
		return follow_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
