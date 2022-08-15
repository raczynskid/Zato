extends KinematicBody2D

const Cooldown = preload('res://Scripts/Cooldown.gd')

export (float) var speed = 0.5
export (int) var health = 3

onready var dead : bool = false
onready var to_dispose : bool = false
onready var player = Global.Player

# load vectors
var velocity = Vector2.ZERO

# other
var is_player_in_range : bool = false
var ready1 : bool = false
var ready2 : bool = false

# load timers
onready var action_cooldown = Cooldown.new(3)

# load animation nodes
onready var visual_nodes = get_node("VisualNodes")

onready var animationPlayer = get_node("AnimationPlayer")
onready var animationTree = get_node("AnimationTree")
onready var animationState = animationTree.get("parameters/playback")

onready var walk_animation = animationPlayer.get_animation("Walk")
onready var slash_effects = get_node("VisualNodes/Strikes/AnimationPlayer")

# load hitboxes and hurtboxes
onready var damage_area = get_node("VisualNodes/Damage_area")
onready var slash_hitbox = get_node("VisualNodes/Damage_area/Slash_hitbox")

onready var damage_area_long = get_node("VisualNodes/Damage_area_long")
onready var slash_hitbox_long = get_node("VisualNodes/Damage_area/Slash_hitbox_long")

onready var player_detection_area = get_node("detection_area")

# load labels

onready var label1 = get_node("Label")
onready var label2 = get_node("Label2")
onready var state = "Idle"

onready var prev_facing = dir_facing()

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
	var target = player.get_node("VisualNodes/Hurtbox_area")
	for area in damage_area.get_overlapping_areas():
		if area == target:
			return "short"
	for area in damage_area_long.get_overlapping_areas():
		if area == target:
			return "long"
	return "none"

func player_vector():
	# return vector towards player
	# relative to player distance
	return (position - player.position) * (-speed)

func set_idle_state():
	# return to idle state
	# to be called from animations
	if health <= 0 and state != "Dead":
		die(false)
		state = "Dead"
		return
	state = "Idle"

func action_choice(expected_range):
	# strike at time intervals
	# or moving
	if action_cooldown.is_ready():
		action_cooldown.reset()
		if expected_range == "short":
			return "Strike"
		if expected_range == "long":
			return "Strike2"
	else:
		action_cooldown.tick(1)
	return state

func combat_state(expected_range):
	# perform offensive actions
	state = action_choice(expected_range)
	animationState.travel(state)

func dir_facing():
	# return string representation
	# on which side of screen is player
	# relative to enemy
	if player_vector().x < 0:
		return "left"
	else:
		return "right"

func rotate_towards_player():
	# flip all visual nodes
	# based on relative player position on x axis
	if not state in ["Strike", "Strike2"] and not ready1 and not ready2:
		var facing = dir_facing()
		if facing != prev_facing:
			prev_facing = dir_facing()
			visual_nodes.scale.x *= -1

func movement_state():
	if not state in ["Strike", "Strike2"]:
		animationState.travel("Walk Forward")
		return move_and_slide(player_vector())
	

func _physics_process(_delta):
	label1.text = str(health)
	label2.text = str(state)
	if health <= 0:
		die(false)
		state = "Dead"
	if state != "Dead":
		if player_detected():
			# rotate towards player
			rotate_towards_player()
			# if player detected check if in melee attack range
			var expected_range : String = player_in_range()
			if expected_range in ["short", "long"] and not state in ["Strike", "Strike2"]:
				# start attacking
				combat_state(expected_range)
			else:
				# if detected but not in range
				# move towards player
				movement_state()
		else:
			# if player not detected just stand there I guess
			animationState.travel("Idle")
	else:
		# fade out if dead?
		if to_dispose:
			visual_nodes.get_node("Sprite").modulate.a -= 0.01
			if visual_nodes.get_node("Sprite").modulate.a <= 0:
				queue_free()

func get_hit(slash_type):
	# triggered on collision with player hurtbox
	if state != "Dead":
		if (ready1 or ready2) and slash_type == 1:
			die(true)
			state = "Dead"
			return
		if health <= 0:
			die(false)
			state = "Dead"
			return
		if state in ["Idle", "Strike", "Strike2"]:
			# show blood effects if hit
			# in one of vulnerable states
			slash_effects.play("strike" + str(slash_type))
			health -= 1

		
func die(fatality):
	if state != "Dead":
		if fatality:
			animationState.travel("Fatality")
		else:
			animationState.travel("Die")
		get_node("Movement_collision").disabled = true

func dispose():
	# fade out sprite and destroy object
	if not to_dispose:
		to_dispose = true
		Global.ENEMIES_DEFEATED += 1

func strike():
	# check for hitbox and hurtbox alignment
	var hit = player_in_range()

	# check for vertical position (footsies) alignment
	var footsies_aligned : bool = abs(self.position.y - player.position.y) < 10
	# calls for damage if player has not blocked
	
	if hit in ["short", "long"] and footsies_aligned:
		player.on_attack(self)

func ready_strike1():
	ready1 = true

func ready_strike2():
	ready2 = true

func end_ready():
	ready1 = false
	ready2 = false
