extends KinematicBody2D


onready var animationPlayer = get_node("AnimationPlayer")
onready var sprite = get_node("Sprite")
export (bool) var dead = false

# load hitboxes and hurtboxes
onready var hurtbox_area = get_node("Sprite/Hurtbox_area")
onready var hurtbox = get_node("Sprite/Hurtbox_area/CollisionShape2D")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func die():
	animationPlayer.play("Die")
	dead = true