extends KinematicBody2D

export (int) var speed = 1000
export (int) var health = 100
export (bool) var shadow_blob = false
onready var dead = false

# load vectors
var velocity = Vector2.ZERO
var input_vector = Vector2.ZERO
var last_vector = Vector2(-1,0)

# load animation nodes
onready var sprites = get_node("VisualNodes")

onready var animationPlayer = get_node("AnimationPlayer")
onready var animationTree = get_node("AnimationTree")
onready var animationState = animationTree.get("parameters/playback")

onready var walk_animation = animationPlayer.get_animation("Walk")

# load hitboxes and hurtboxes
onready var damage_area = get_node("VisualNodes/Damage_area")
onready var slash_hitbox = get_node("VisualNodes/Damage_area/Slash_hitbox")

onready var state = "Idle"

# enable attack animations
var slash_enabled : int = 1

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

	if Input.is_action_just_pressed("Attack"):
		execute_slash()

	velocity = move_and_slide(input_vector * speed * delta)

func _draw():
	pass

func get_movement_inputs():
	# get current movement vector from keyobard inptus
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	# prevent movement in attack state
	if animationState.get_current_node() in ["Slash", "Slash2", "Slash3"]:
		input_vector = Vector2.ZERO

	# flip entire node on direction change
	if (last_vector.x != input_vector.x) and (input_vector.x != 0):
		sprites.scale.x = last_vector.x
	
	# save last active movement vector
	if (last_vector.x != input_vector.x) and (input_vector.x != 0):
		last_vector.x = input_vector.x

	return input_vector.normalized()

func execute_slash():
	# execute slash 1 if idle or moving
	if slash_enabled == 1:
		if state != "Slash":
			state = "Slash"
		animationState.travel('Slash')
	
	# execute slash 2 if in opportunity window
	elif slash_enabled == 2:
		animationState.travel('Slash2')
	
	# execute slash 3 if in opportunity window
	elif slash_enabled == 3:
		animationState.travel('Slash3')


func end_slash():
	state = "Idle"
	slash_enabled = 1

func slash_damage():
	# get all collision object for sword hitbox
	# and deal damage if colliders belong to enemies group
	for area in damage_area.get_overlapping_areas():
		var target = area.get_parent().get_parent()
		if target.is_in_group("enemies"):
			if not target.dead:
				target.get_hit()

func slash2():
	# open window of opportunity for slash 2
	# called from animation Slash1
	slash_enabled = 2

func slash3():
	# open window of opportunity for slash 3
	# called from animation Slash2
	slash_enabled = 3
