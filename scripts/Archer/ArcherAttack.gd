extends State

@export
var follow_state : State
@export
var die_state : State
@export
var sound : Resource
@onready
var aim_line = load("res://scenes/fx/AimArrow.tscn")


func enter() -> void:
	is_done = false
	super()
	var aim = aim_line.instantiate()
	aim.position = Vector2.ZERO
	parent.add_child(aim)
	#parent.enemyFX.stream = sound
	#parent.enemyFX.play()
	#parent.short_hurtbox_collider.disabled = false

func exit() -> void:
	is_done = false

	#parent.enemyFX.stop()
	
func process_physics(_delta: float) -> State:
	if is_done:
		return follow_state
	return null

func _on_animated_sprite_2d_animation_finished():
	print("finished")
	is_done = true
