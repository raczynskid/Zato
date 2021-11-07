extends Node
onready var pause_menu = get_node("Pause_menu")
onready var enemy_template = load("res://Assets/Enemies/Enemy.tscn")

var enemies = []

func _ready():
	pass

func _process(_delta):
	var enemies_count : int = get_tree().get_nodes_in_group("enemies").size()
	if Input.is_action_just_pressed("ui_cancel"):
		if not pause_menu.visible:
			pause_menu.visible = true
		else:
			pause_menu.visible = false
	if enemies_count == 0:
		if Global.ENEMIES_DEFEATED < 5:
			spawn_enemy(1)
		elif Global.ENEMIES_DEFEATED < 10:
			spawn_enemy(2)
		else:
			spawn_enemy(3)

func spawn_enemy(n):
	for _i in range(0, n):
		randomize()
		# create instance and add to scene
		var new_enemy = enemy_template.instance()
		get_node("YSort").add_child(new_enemy)

		# randomize enemy health
		new_enemy.health = int(rand_range(1,5))

		# randomize spawn position
		var spawn_x = int(rand_range(100,300))
		var spawn_y = int(rand_range(125,225))
		new_enemy.set_position(Vector2(spawn_x, spawn_y))

		enemies.append(new_enemy)

