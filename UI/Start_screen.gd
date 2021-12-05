extends Node2D


func _input(event):
    if event is InputEventKey and event.pressed:
        if event.scancode != KEY_ENTER:
            get_tree().change_scene("res://Levels/World.tscn")