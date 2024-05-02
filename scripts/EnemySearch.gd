extends State

@export
var idle_state : State

var target : Vector2
var direction
var velocity

func enter() -> void:
	super()
	print("search entered")
	var rng = RandomNumberGenerator.new()
	var random_x = rng.randf_range(70.0, 330.0)
	var random_y = rng.randf_range(110.0, 255.0)
	target = Vector2(random_x, random_y)
	direction = parent.global_position.direction_to(target)
	print(target)

func exit() -> void:
	return

func process_input(event: InputEvent) -> State:
	return null

func process_physics(delta: float) -> State:
	velocity = Vector2.LEFT * 100
	parent.move_and_slide()
	return null
