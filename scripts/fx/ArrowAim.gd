extends Node2D

@onready
var line = $Aim
@onready
var alpha = 0
@onready
var aiming : bool = true

func _physics_process(_delta):
	if alpha < 1 and aiming:
		alpha += _delta
		line.modulate = Color(1,1,1, alpha)
	else:
		if aiming:
			line.queue_free()
			aiming = false
			fire()
			
func fire():
	pass
	$Arrow.visible=true
	$Arrow.play("default")


func _on_arrow_animation_finished():
	queue_free()
