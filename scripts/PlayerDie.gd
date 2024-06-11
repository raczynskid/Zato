extends State

func enter():
	#super()
	# on enter death state
	parent.set_collision_layer_value(1, false)
	parent.set_collision_layer_value(2, false)
	Signals.player_died.emit()
	is_done = false
