extends State

var death_type : int = 1
var cleanup_timer : float = 3.0

var alpha : float = 1.0

@onready
var blood_remains = load("res://scenes/fx/blood_remain.tscn")

@onready
var blood_spawned : bool = false

func bool_randomize(max_val : int = 1) -> bool:
	rng.randomize()
	return bool(rng.randi_range(0, max_val))

func enter() -> void:
	if parent.last_hit == "Strike3":
		death_type = 2
	parent.animations.play(animation_name + str(death_type))
	parent.shadow.play(animation_name + str(death_type))
	parent.raycast_short.enabled = false
	parent.raycast.enabled = false
	parent.hitbox.monitoring = false
	parent.hitbox.monitorable = false
	parent.set_collision_layer_value(1, false)
	

func exit() -> void:
	pass

func process_physics(_delta: float) -> State:
	if is_done:
		if not blood_spawned:
			spawn_blood()
		if cleanup_timer > 0:
			cleanup_timer -= _delta
		else:
			if alpha > 0:
				alpha -= 0.01
				parent.animations.modulate = Color(1,1,1, alpha)
				parent.shadow.modulate = Color(1,1,1, alpha)
			else:
				parent.shadow.queue_free()
				parent.queue_free()
				Signals.enemy_died.emit()
	return null

func spawn_blood():
	if parent.animations.get_frame() >= 11:
		var blood = blood_remains.instantiate()
		blood.position = parent.position
		add_child(blood)
		blood.reparent(get_tree().get_root().get_node("./App"))
		blood_spawned = true

func _on_animated_sprite_2d_animation_finished():
	is_done = true
