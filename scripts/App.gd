extends Node2D

@onready
var rng = RandomNumberGenerator.new()

@export
var level : int = 1

var wave_size : Dictionary = {1:1, 2:3, 3:6, 4:8, 5:10}

func _ready():
	spawn_enemy(1, true)

func randomize_spawn_position() -> Vector2:
	rng.randomize()
	var pick_side = rng.randi_range(0, 1)
	var window_size = get_viewport_rect().size
	if pick_side > 0:
		return Vector2(0, rng.randi_range(120, 230))
	return Vector2(window_size.x, rng.randi_range(120, 230))

func spawn_enemy(enemies: int, first: bool = false) -> void:
	for n in range(enemies):
		var scene = load("res://scenes/Enemy.tscn")
		var spawned_enemy = scene.instantiate()
		if first:
			spawned_enemy.position = Vector2(400, 175.0)
			add_child(spawned_enemy)
		else:
			var spawn_position = randomize_spawn_position()
			spawned_enemy.position = spawn_position
			add_child(spawned_enemy)
	

func _on_spawn_timer_timeout() -> void:
	level += 1
	if level < wave_size.size():
		spawn_enemy(wave_size[level], false)
	
