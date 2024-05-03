extends State

@export
var follow_state : State
@export
var die_state : State
@export
var sound : Resource

var is_done : bool = false


func enter() -> void:
	is_done = false
	super()
	parent.enemyFX.stream = sound
	parent.enemyFX.play()
	parent.short_hurtbox_collider.disabled = false

func exit() -> void:
	is_done = false
	parent.short_hurtbox_collider.disabled = true
	
func process_physics(delta: float) -> State:
	##### TODO: set up hurtbox activation on specific frame
	print(parent.animations.get_frame())
	if is_done:
		return follow_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
