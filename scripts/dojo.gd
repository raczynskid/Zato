extends Node2D

@onready
var stoat = $Stoat
var stoat_speed = 15
var is_done : bool = false

func _ready():
	Signals.update_ui.connect(_update_ui)

func _physics_process(delta):
	if not is_done:
		if not stoat.frame in [5,6,7]:
			stoat.global_position.x -= delta * stoat_speed
		if stoat.global_position.x < 100:
			stoat.queue_free()
			is_done = true

func restart_ui():
	$KanjiLeft.visible = false
	$KanjiRight.visible = false

func _update_ui(hp):
	match hp:
		3:
			$KanjiLeft.visible = false
			$KanjiRight.visible = false
		2:
			$KanjiLeft.visible = true
			$KanjiLeft.play("default")
			$KanjiRight.visible = false
		1:
			$KanjiLeft.visible = true
			$KanjiRight.visible = true
			$KanjiRight.play("default")
			
			
		
