extends Control

func _ready():
	# get button object
	var new_game = get_node("Menu/CenterRow/Buttons/NewGameButton")
	var exit_button = get_node("Menu/CenterRow/Buttons/ExitButton")

	# listen for signal from the button
	# scene_to_load : .tscn file path
	new_game.connect("pressed", self, "_on_Button_pressed", [new_game.scene_to_load])
	exit_button.connect("pressed", self, "_on_Button_pressed", [exit_button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	# change scene on load
	if scene_to_load == "exit":
		get_tree().quit()
	else:
		get_tree().change_scene(scene_to_load)
