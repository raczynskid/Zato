extends Control

# get objects to interact with
onready var crt_overlay = get_node("../crt_overlay")

func _ready():
	# get button object
	var new_game = get_node("Menu/CenterRow/Buttons/NewGameButton")
	var crt_mode_button = get_node("Menu/CenterRow/Buttons/CrtModeButton")
	var exit_button = get_node("Menu/CenterRow/Buttons/ExitButton")

	# listen for signal from the button
	# scene_to_load : .tscn file path
	new_game.connect("pressed", self, "_on_Button_pressed", [new_game.scene_to_load])
	exit_button.connect("pressed", self, "_on_Button_pressed", [exit_button.scene_to_load])
	crt_mode_button.connect("pressed", self, "_on_Button_pressed_crt_toggle")

func _on_Button_pressed(scene_to_load):
	# change scene on load
	if scene_to_load == "exit":
		get_tree().quit()
	else:
		get_tree().change_scene(scene_to_load)

func _on_Button_pressed_crt_toggle():
	if crt_overlay.visible:
		crt_overlay.visible = false
	else:
		crt_overlay.visible = true