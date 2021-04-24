extends KinematicBody2D

const Cooldown = preload('res://Scripts/Cooldown.gd')

export (int) var speed = 1000
export (int) var health = 100

onready var dead : bool = false
onready var player = Global.Player

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
onready var player_detection_area = get_node("detection_area")

# load labels

onready var label1 = get_node("Label")
onready var state = "Idle"

func _ready():
	animationTree.active = true
	velocity = Vector2(0,0)
	action_cooldown.max_time = 100

func player_detected():
	# check detection zone for player
	# to be used as movement AI
	for area in player_detection_area.get_overlapping_areas():
		var colliding_object = area.get_parent().get_parent()
		if colliding_object == player:
			return true
	return false

func player_in_range(): 
	# check target zone for player
	# player detection for combat
	for area in damage_area.get_overlapping_areas():
		var target = area.get_parent().get_parent()
		if target.is_in_group("Player"):
			return true
	return false

func player_vector():
	var player_vector : Vector2 = position - player.position
	print(player_vector)
	return player_vector

func set_idle_state():
	state = "Idle"

func action_choice():
	if state != "Parry":
		if action_cooldown.is_ready():
			action_cooldown.reset()
			return "Strike"
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
	player_vector()

func _physics_process(_delta):
	if state != "Dead":
		# check for player in target zone
		if player_in_range():
			combat_state()
		else:
			# check if player in detection
			if player_detected():
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
	# does a check on player blocking state
	# calls for damage if player has not blocked

	player.on_attack(self)
	player.block_enabled = false

func strike_charge():
	# opens blocking window for player and provides info on attacker
	# to player object
	
	player.on_attack_charged(self)
