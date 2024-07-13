extends Sprite2D

var alpha : float = 1.0

@export
var lifetime : float = 2.0

func _physics_process(_delta):
	if lifetime >= 0:
		alpha -= 0.01
		modulate = Color(1,1,1, alpha)
	else:
		queue_free()
