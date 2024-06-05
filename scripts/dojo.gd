extends Node2D

@onready
var stoat = $Stoat
var stoat_speed = 15
var is_done : bool = false

func _physics_process(delta):
	if not is_done:
		if not stoat.frame in [5,6,7]:
			stoat.global_position.x -= delta * stoat_speed
		if stoat.global_position.x < 100:
			stoat.queue_free()
			is_done = true
