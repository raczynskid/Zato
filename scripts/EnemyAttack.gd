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
	parent.short_hurtbox_collider.disabled = true
	parent.enemyFX.stop()
	
func process_physics(delta: float) -> State:
	if parent.animations.get_frame() == 3:
		var hit_object = parent.hurtbox.get_overlapping_areas()
		if hit_object:
			if hit_object[0].get_owner().is_in_group("Player"):
				Signals.player_hit.emit()
				parent.short_hurtbox_collider.disabled = true
	if is_done:
		return follow_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
