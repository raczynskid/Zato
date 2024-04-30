extends CharacterBody2D

@export var speed = 400

var input_direction: Vector2

enum State {Idle, Walk, Strike, Sleep}
var strike_enabled : int = 1
var continue_strike : bool = false
var current_state = State.Sleep

func get_input():
	input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input_direction.x != 0:
		enter_state(State.Walk)
	else:
		enter_state(State.Idle)
		
	if Input.is_action_just_pressed("ui_accept"): 
		enter_state(State.Strike)
	velocity = input_direction * speed

func enter_state(state) -> void:
	match state:
		State.Strike:
			pass
		State.Walk:
			if current_state == State.Strike:
				return
			scale.x = scale.y * (-1 if input_direction.x <0 else 1)
		State.Idle:
			if current_state == State.Sleep:
				return
			if current_state == State.Strike:
				return
	current_state = state
	
func exit_state(from_state, to_state) -> void:
	match from_state:
		State.Strike:
			if to_state == State.Idle:
				strike_enabled = 1
				continue_strike = false
			elif to_state == State.Strike:
				continue_strike = false
	current_state = to_state

func _physics_process(delta):
	get_input()
	$Debug.text = "continue strike " + str(int(continue_strike))
	$Debug2.text = "strike_enabled " + str(strike_enabled)
	match current_state:
		State.Sleep:
			$AnimatedSprite2D.play("Zazen")
		State.Idle:
			$AnimatedSprite2D.play("Idle")
		State.Walk:
			$AnimatedSprite2D.play("Walk")
		State.Strike:
			velocity = Vector2.ZERO
			$AnimatedSprite2D.play("Strike1")
			
	move_and_slide()

func _on_animated_sprite_2d_animation_finished():
	match current_state:
		State.Strike:
			exit_state(current_state, State.Idle)
