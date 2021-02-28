extends KinematicBody2D

export (int) var speed = 1000
export (int) var health = 100
export (bool) var shadow_blob = false

# load vectors
var velocity = Vector2.ZERO
var input_vector = Vector2.ZERO
var last_vector = Vector2(-1,0)

# load animation nodes
onready var sprites = get_node("VisualNodes")

onready var animationPlayer = get_node("AnimationPlayer")
onready var animationTree = get_node("AnimationTree")
onready var animationState = animationTree.get("parameters/playback")

# load hitboxes and hurtboxes
onready var damage_area = get_node("VisualNodes/Damage_area")
onready var slash_hitbox = get_node("VisualNodes/Damage_area/Slash_hitbox")


onready var state = "Idle"

# Called when the node enters the scene tree for the first time.
func _ready():
	animationTree.active = true
	velocity = Vector2(0,0)
	state = "Idle"

func _physics_process(delta):
	# get arrow key inputs
	input_vector = get_movement_inputs()

	if input_vector != Vector2.ZERO:
		animationState.travel('Walk')
	else:
		animationState.travel('Idle')

	if Input.is_action_pressed("Attack"):
		execute_slash()

	velocity = move_and_slide(input_vector * speed * delta)

func _draw():
	if shadow_blob:
		draw_circle(Vector2(0,0), 10, Color(0,0,0,0.2))

func get_movement_inputs():
	# get current movement vector from keyobard inptus
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	# left = -1
	# right = 1

	# prevent movement in attack state
	if animationState.get_current_node() == "Slash":
		input_vector = Vector2.ZERO

	# flip entire node on direction change
	if (last_vector.x != input_vector.x) and (input_vector.x != 0):
		sprites.scale.x = last_vector.x

	if (last_vector.x != input_vector.x) and input_vector.x != 0:
		last_vector.x = input_vector.x

	return input_vector.normalized()

func execute_slash():
	if state != "Slash":
		state = "Slash"
		slash_hitbox.disabled = false
	animationState.travel('Slash')

func end_slash():
	state = "Idle"

func slash_damage():

	for area in damage_area.get_overlapping_areas():
		var target = area.get_parent().get_parent()
		if target.is_in_group("enemies"):
			if not target.dead:
				target.die()

	slash_hitbox.disabled = true
