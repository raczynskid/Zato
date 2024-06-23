extends Node2D

@onready
var rng = RandomNumberGenerator.new()

@export
var level : int = 1
@export
var seconds_between_enemies : float = 3
var game_over : bool = false
var highscore : bool = false

@export
var game_over_sound : Resource

@export
var restart_sound : Resource

@export
var spawn_first_enemy : bool = false

@onready
var player_scene = load("res://scenes/Player.tscn")

var wave_size : Dictionary = {1:1, 2:2, 3:3, 4:8, 5:10}

func restart_game():
	var enemies = get_tree().get_nodes_in_group("Enemy")
	for enemy in enemies:
		enemy.queue_free()
	for fx in get_tree().get_nodes_in_group("fx"):
		fx.queue_free()
	$GameOverScreen/HighScore.visible = false
	$BackgroundFX.stop()
	$BackgroundFX.stream = restart_sound
	$BackgroundFX.play()
	$Dojo.restart_ui()
	level = 0
	Globals.enemies_killed = 0
	game_over = false
	highscore = false
	for child in $CanvasGroup.get_children():
		if child.get_name() != "Shadow":
			child.queue_free()
	$SpawnTimer.start(seconds_between_enemies)
	var new_player = player_scene.instantiate()
	new_player.position = Vector2(200, 150)
	add_child(new_player)
	#$GameOverScreen.visible = false
	$GameOverScreen/AnimationPlayer.play_backwards("default")
	$BackroundMusic.play()


func _ready():
	Signals.player_died.connect(_on_player_death)
	Signals.enemy_died.connect(_on_enemy_killed)
	Signals.leadearboard_updated.connect(_on_leaderboard_update)
	Globals.enemies_killed = 0
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
		if highscore:
			$GameOverScreen/Leaderboard.refresh()
			$GameOverScreen/AnimationPlayer.play("leaderboard_show")
			$GameOverScreen/Leaderboard/ColorRect/VBoxContainer/LineEdit.grab_focus()
		else:
			restart_game()

func _on_spawn_timer_timeout() -> void:
	if !game_over:
		spawn_enemy(1, false)
		if $SpawnTimer.wait_time > 1:
			$SpawnTimer.wait_time -= 0.2
	#var enemies = get_tree().get_nodes_in_group("Enemy")
	#if !enemies:
		#level += 1
		#if level < wave_size.size():
			#if !game_over:
				#spawn_enemy(wave_size[level], false)
	
func _on_player_death() -> void:
	game_over = true
	$GameOverScreen.visible = true
	$GameOverScreen/AnimationPlayer.play("default")
	$GameOverScreen/LabelScore.text = str(Globals.enemies_killed) + " KILLED"
	if (Globals.enemies_killed > 0) and (Globals.enemies_killed > await get_lowest_score()):
		highscore = true
	if highscore:
		$GameOverScreen/HighScore.visible = true
	$BackroundMusic.stop()
	$BackgroundFX.stream = game_over_sound
	$BackgroundFX.play()
	$Player.queue_free()
	
	
func _on_enemy_killed() -> void:
	Globals.enemies_killed += 1
	
func _on_leaderboard_update():
	$GameOverScreen/AnimationPlayer.play_backwards("leaderboard_show")
	highscore = false

func get_lowest_score():
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores().sw_get_scores_complete
	return sw_result.scores[len(sw_result.scores)-1]["score"]

