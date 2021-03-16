extends KinematicBody2D


onready var animationPlayer = get_node("AnimationPlayer")
onready var animationTree = get_node("AnimationTree")
onready var animationState = animationTree.get("parameters/playback")
onready var sprite = get_node("Sprite")
onready var max_hp = randi()%3+1
onready var hp = max_hp

# load hitboxes and hurtboxes
onready var hurtbox_area = get_node("Sprite/Hurtbox_area")
onready var hurtbox = get_node("Sprite/Hurtbox_area/CollisionShape2D")
onready var dead = false

func _ready():
	pass

func _process(_delta):
	if hp == max_hp:
		animationState.travel("Idle")
	
	if max_hp == 1:
		if hp == 0:
			animationState.travel("Die1")

	elif max_hp == 2:
		if hp == 0:
			animationState.travel("Die2")
		elif hp == 1:
			animationState.travel("Dmg1")

	elif max_hp == 3:
		if hp == 0:
			animationState.travel("Die3")
		elif hp == 2:
			animationState.travel("Dmg1")
		elif hp == 1:
			animationState.travel("Dmg2")

func get_hit():
	hp -= 1

func die():
	dead = true