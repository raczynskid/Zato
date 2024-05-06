extends State

@export
var next_state : State
@export
var death_state : State

var deathblow : bool = false

func enter() -> void:
	super()
	is_done = false
	if parent.hp > 0:
		parent.hp -= 1
	else:
		deathblow = true

func exit() -> void:
	is_done = false
	parent.hitbox.monitoring = true
	parent.hitbox.monitorable = true

func process_input(_event: InputEvent) -> State:
	return null

func process_frame(_delta: float) -> State:
	return null

func process_physics(_delta: float) -> State:
	if deathblow or parent.hp <= 0:
		return death_state
	if is_done:
		return next_state
	return null

func _on_animated_sprite_2d_animation_finished():
	is_done = true
