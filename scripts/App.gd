extends Node2D

@onready
var rng = RandomNumberGenerator.new()

@export
var level : int = 1
@export
var seconds_between_enemies : float = 3
var enemies_killed : int
var game_over : bool = false

@export
var game_over_sound : Resource

@export
var restart_sound : Resource

@export
var spawn_first_enemy : bool = false

var wave_size : Dictionary = {1:1, 2:2, 3:3, 4:8, 5:10}

func restart_game():
	$BackgroundFX.stop()
	$BackgroundFX.stream = restart_sound
	$BackgroundFX.play()
	$Dojo.restart_ui()
	level = 0
	enemies_killed = 0
	game_over = false
	for child in $CanvasGroup.get_children():
		if child.get_name() != "Shadow":
			child.queue_free()
	$SpawnTimer.start(seconds_between_enemies)
	var player_scene = load("res://scenes/Player.tscn")
	var new_player = player_scene.instantiate()
	new_player.position = Vector2(200, 150)
	add_child(new_player)
	$GameOverScreen.visible = false
	$BackroundMusic.play()


func _ready():
	Signals.player_died.connect(_on_player_death)
	Signals.enemy_died.connect(_on_enemy_killed)
	enemies_killed = 0
	if spawn_first_enemy:
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

func _unhandled_input(_event):
	if Input.is_action_just_pressed("ui_accept") and game_over:
		restart_game()

func _on_spawn_timer_timeout() -> void:
	if !game_over:
		spawn_enemy(1, false)
		if $SpawnTimer.wait_time > 1:
			$SpawnTimer.wait_time -= 0.2
			print($SpawnTimer.wait_time)
	#var enemies = get_tree().get_nodes_in_group("Enemy")
	#if !enemies:
		#level += 1
		#if level < wave_size.size():
			#if !game_over:
				#spawn_enemy(wave_size[level], false)
	
func _on_player_death() -> void:
	game_over = true
	$GameOverScreen.visible = true
	$GameOverScreen/LabelScore.text = str(enemies_killed) + " enemies killed"
	$Player.queue_free()
	$BackroundMusic.stop()
	$BackgroundFX.stream = game_over_sound
	$BackgroundFX.play()
	var enemies = get_tree().get_nodes_in_group("Enemy")
	for enemy in enemies:
		enemy.queue_free()
	
func _on_enemy_killed() -> void:
	enemies_killed += 1
