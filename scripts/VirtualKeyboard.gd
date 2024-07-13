extends Node2D

@onready
var letters : Array = "A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z".split(", ")
@onready
var selected = $Control/VBoxContainer/HBoxContainer/Selected
@onready
var index : int = 0
@onready
var entered : bool = false

func _on_next_button_pressed():
	index += 1
	selected.text = letters[index]


func _on_prev_button_pressed():
	index -= 1
	selected.text = letters[index]


func _on_accept_button_pressed():
	Signals.vk_letter_entered.emit(letters[index])
	$Control/HBoxContainer2/VBoxContainer/Label.visible = true
	entered = true


func _on_submit_button_pressed():
	if entered:
		Signals.vk_submitted.emit()
