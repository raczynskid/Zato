extends State

@export
var idle_state : State
@export
var attack_state : State
@export
var search_speed : int = 50

var target : Vector2
var direction : Vector2

var timer_setting: float = 1.0
var timer

func randomize_direction() -> Vector2:
	var rng = RandomNumberGenerator.new()
	return Vector2(rng.randf_range(-1.0, 1.0), rng.randf_range(-1.0, 1.0)).normalized()

func enter() -> void:
	super()
	direction = randomize_direction()
	timer = timer_setting

func exit() -> void:
	return

func process_input(event: InputEvent) -> State:
	return null

func process_physics(delta: float) -> State:
	parent.scale.x = parent.scale.y * (1 if direction.x <0 else -1)
	if timer >= 0:
		timer -= delta
	else:
		timer = timer_setting
		direction = randomize_direction()
	parent.velocity = direction * search_speed
	parent.move_and_slide()
	return null
