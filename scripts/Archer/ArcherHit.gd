extends State

@export
var next_state : State
@export
var death_state : State
@export
var sound : Resource

var deathblow : bool = false

func enter() -> void:
	parent.enemyFX.stream = sound
	parent.enemyFX.play()
	print("hit")
	if parent.last_hit in ["Strike2", "Strike3"]:
		super()
		is_done = false
		if parent.hp > 0:
			parent.hp -= 1
		else:
			deathblow = true
	else:
		if parent.last_hit == "Strike1":
			parent.bloodFX.visible = true
			parent.bloodFX.play()
			is_done = true
			if parent.hp > 0:
				parent.hp -= 1
			else:
				deathblow = true

func exit() -> void:
	is_done = false
	parent.hitbox.monitoring = true
	parent.hitbox.monitorable = true
	
	parent.next_strike_delay = parent.next_strike_delay_setting
	parent.counter_mode = true

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
