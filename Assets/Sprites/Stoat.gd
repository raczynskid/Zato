extends Node2D

onready var animationPlayer = get_node("AnimationPlayer")
onready var looked : bool = false

func _ready():
	animationPlayer.play("Run")

func run(delta):
	self.position.x -= 50 * delta

func look():
	animationPlayer.play("Idle")

func _process(delta):
	if self.position.x < 150 and not looked:
		look()
	else:
		run(delta)
	
	if self.position.x < 0:
		queue_free()

func end_look():
	looked = true
	animationPlayer.play("Run")
