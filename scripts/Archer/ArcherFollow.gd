extends State
@export
var attack2_cooldown : float = 3.0

@export
var idle_state : State
@export
var attack_state : State
@export
var search_state : State
@export
var backtrack_state : State
@export
var follow_speed : int = 30

@onready
var shot_ready : bool = false

var direction : Vector2
	
func player_position() -> Vector2:
	# calculate direction vector to player
	return parent.global_position.direction_to(parent.player_target.global_position)
	
func in_range() -> bool:
	var collider = parent.raycast_short.get_collider()
	if collider:
		return collider.is_in_group("Player")
	return false

func enter() -> void:
	super()
	parent.shot_timer.start()

func exit() -> void:
	return

func is_aimed() -> bool:
	var collider = parent.raycast.get_collider()
	if collider:
		return collider.get_parent().is_in_group("Player")
	return false


func process_physics(delta: float) -> State:
	if in_range():
		return backtrack_state
	
	if is_aimed():
		if shot_ready:
			shot_ready = false
			return attack_state

	# establish vector to player's position
	direction = Vector2(player_position().x * -0.01, player_position().y)
	# rotate the sprite
	#parent.scale.x = parent.scale.y * (1 if direction.x <0 else -1)
	parent.velocity = direction * follow_speed
	parent.move_and_slide()
	return null


func _on_shot_timer_timeout():
	shot_ready = true
