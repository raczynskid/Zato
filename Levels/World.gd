extends Node
onready var pause_menu = get_node("Pause_menu")


func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if not pause_menu.visible:
			pause_menu.visible = true
		else:
			pause_menu.visible = false
