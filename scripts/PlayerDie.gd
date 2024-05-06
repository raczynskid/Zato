extends State

func enter() -> void:
	# on enter death state
	parent.animations.rotation = -90
	parent.set_collision_layer_value(1, false)
	parent.set_collision_layer_value(2, false)
	Signals.player_died.emit()
