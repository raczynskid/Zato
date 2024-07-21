extends Node2D

@onready
var step = load("res://scenes/fx/footprint.tscn")
@onready
var top_node = get_tree().get_root().get_node("./App/Dojo")
@onready
var parent = get_parent()
@export
var frequency : float = 0.2
@export
var emit_time : float = 5.0
@export
var emitting = true

func _ready():
	$Timer.wait_time = frequency

func _physics_process(_delta):
	pass

func start_emitting():
	emitting = true
	$EmittingTimer.wait_time = emit_time
	$EmittingTimer.start()

func _on_timer_timeout():
	if emitting:
		var new_step = step.instantiate()
		top_node.add_child(new_step)
		new_step.position = Vector2(parent.position.x, parent.position.y + 25)
		new_step.scale.x = parent.scale.y
		new_step.z_index = 0

func _on_emitting_timer_timeout():
	emitting = false
