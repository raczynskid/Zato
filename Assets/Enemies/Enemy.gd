extends KinematicBody2D

const Cooldown = preload('res://Scripts/Cooldown.gd')

export (int) var speed = 1000
export (int) var health = 100

onready var dead : bool = false

# load vectors
var velocity = Vector2.ZERO

# other
var is_player_in_range : bool = false

# load timers
onready var action_cooldown = Cooldown.new(3)

# load animation nodes
onready var sprites = get_node("VisualNodes")

onready var animationPlayer = get_node("AnimationPlayer")
onready var animationTree = get_node("AnimationTree")
onready var animationState = animationTree.get("parameters/playback")

onready var walk_animation = animationPlayer.get_animation("Walk")
onready var slash_effects = get_node("VisualNodes/Strikes/AnimationPlayer")

# load hitboxes and hurtboxes
onready var damage_area = get_node("VisualNodes/Damage_area")
onready var slash_hitbox = get_node("VisualNodes/Damage_area/Slash_hitbox")

# load labels

onready var label1 = get_node("Label")
onready var state = "Idle"

func _ready():
	animationTree.active = true
	velocity = Vector2(0,0)
	action_cooldown.max_time = 100

func player_in_range(): 
	# check target zone for player
	for area in damage_area.get_overlapping_areas():
		var target = area.get_parent().get_parent()
		if target.is_in_group("Player"):
			return true
	return false

func set_idle_state():
	state = "Idle"

func action_choice():
	if state != "Parry":
		if action_cooldown.is_ready():
			action_cooldown.reset()
			if randi() % 2:
				if randi() % 2:
					return "Ready"
				else:
					return "Strike"
			else:
				return "Idle"
		else:
			action_cooldown.tick(1)
	return state

func combat_state():
	state = action_choice()
	animationState.travel(state)
	label1.text = state

func movement_state():
	label1.text = "player not in range"
	animationState.travel("Idle")

func _physics_process(_delta):
	if state != "Dead":
		# check for player in target zone
		if player_in_range():
			combat_state()
		else:
			movement_state()
	

func get_hit(slash_type):
	if state == "Idle":
		state = "Parry"
		animationState.travel("Parry")
	if state == "Parry":
		get_node("VisualNodes/Sparks").restart()
	if state in ["Ready", "Strike"]:
		slash_effects.play("strike" + str(slash_type))

func end_parry():
	state = "Idle"

func die():
	#state = "Dead"
	#animationState.travel('Die')
	var blood = get_node("VisualNodes/Blood")
	blood.restart()

func strike():
	pass
