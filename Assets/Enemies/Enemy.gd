extends KinematicBody2D

export (int) var speed = 1000
export (int) var health = 100

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

func _ready():
	animationTree.active = true
	velocity = Vector2(0,0)
	state = "Idle"


func _physics_process(_delta):
	# check for player in target zone
	if player_in_range():
		ready_attack(true)
	else:
		ready_attack(false)

func player_in_range():
	# check target zone for player
	for area in damage_area.get_overlapping_areas():
		var target = area.get_parent().get_parent()
		if target.is_in_group("Player"):
			return true
				
func ready_attack(is_attack_ready):
	if is_attack_ready:
		state = "Attack_ready"
		animationState.travel('Attack_ready')
	else:
		state = "Idle"
		animationState.travel('Idle')
