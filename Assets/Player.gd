extends KinematicBody2D

export (int) var speed = 1000
export (int) var health = 100
export (bool) var shadow_blob = false
onready var dead : bool = false

# variables to handle double tap mechanic
onready var input_forward_data = {'taps':0, 'timer':0, 'reset_time':1}

# setup block states
onready var block_enabled : bool = false
onready var blocking : bool = false
onready var block_direction : String = ""
onready var fumble_window_on : bool = false
onready var fumble : bool = false

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

# enable attack animations
var slash_enabled : int = 1

# load debug labels
onready var fumble_label = get_node("Label")

# Called when the node enters the scene tree for the first time.
func _ready():
	animationTree.active = true
	velocity = Vector2(0,0)
	state = "Idle"
	Global.Player = self

func _physics_process(delta):
	# get arrow key inputs
	input_vector = get_movement_inputs()

	if input_vector != Vector2.ZERO:
		animationState.travel('Walk')
	else:
		animationState.travel('Idle')

	if Input.is_action_just_pressed("Attack"):
		execute_slash()
	
	# checks for block input in the time window
	# where blocking is enabled via on_attack_charge() method
	# ie between first and second frame of enemy attack
	
	fumble_label.text = str(fumble)
	
	# check double tap on any direction for fumble
	# (temp workaround for bug where player 
	# doesn't fumble if walking past opponent)
	if double_tap("ui_left", delta) or double_tap("ui_right", delta):
		if fumble_window_on:
			fumble = true

	if (block_enabled) and (block_direction != ""):

		# if block input is succesfull in the timeframe, proceed to block
		if double_tap(block_direction, delta) and (not fumble):
			blocking = true

	if state == "Block":
		animationState.travel('Block')

	velocity = move_and_slide(input_vector * speed * delta)

func _draw():
	pass

func double_tap(tap_direction, delta):
    # handle the timer.
    if input_forward_data['timer'] > 0:
        input_forward_data['timer'] -= delta
        if input_forward_data['timer'] <= 0:
            input_forward_data['taps'] = 0
    # when the forward key is pressed:
    if Input.is_action_just_pressed(tap_direction):
        input_forward_data['taps'] += 1

        # set the timer going.
        if input_forward_data['timer'] <= 0:
            input_forward_data['timer'] = input_forward_data['reset_time']

        if input_forward_data['taps'] == 2:
            return true
        else:
            return false


func get_movement_inputs():
	# get current movement vector from keyobard inptus
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	# prevent movement in attack state
	if animationState.get_current_node() in ["Slash", "Slash2", "Slash3", "Block"]:
		input_vector = Vector2.ZERO

	# flip entire node on direction change
	if (last_vector.x != input_vector.x) and (input_vector.x != 0):
		sprites.scale.x = last_vector.x
	
	# save last active movement vector
	if (last_vector.x != input_vector.x) and (input_vector.x != 0):
		last_vector.x = input_vector.x

	return input_vector.normalized()

func execute_slash():
	# execute slash 1 if idle or moving
	if slash_enabled == 1:
		if state != "Slash":
			state = "Slash"
		animationState.travel('Slash')
	
	# execute slash 2 if in opportunity window
	elif slash_enabled == 2:
		animationState.travel('Slash2')
	
	# execute slash 3 if in opportunity window
	elif slash_enabled == 3:
		animationState.travel('Slash3')


func end_slash():
	state = "Idle"
	slash_enabled = 1

func slash_damage():
	# get all collision object for sword hitbox
	# and deal damage if colliders belong to enemies group
	for area in damage_area.get_overlapping_areas():
		var target = area.get_parent().get_parent()
		# check if target is enemy and if hurtbox was hit
		if target.is_in_group("enemies") and area.name == "Hurtbox_area":
			if not target.dead:
				#print(slash_enabled)
				target.get_hit(slash_enabled)

func slash2():
	# open window of opportunity for slash 2
	# called from animation Slash1
	slash_enabled = 2

func slash3():
	# open window of opportunity for slash 3
	# called from animation Slash2
	slash_enabled = 3

func block():
	# called if enemy strike is successfullt blocked

	print("blocking")
	state = "Block"
	get_node("VisualNodes/Sparks").restart()

func end_block():
	# resets all block states
	# called from last frame of block animation

	state = "Idle"
	print("block ended")
	block_enabled = false
	blocking = false

func calculate_block_direction(enemy):
	# check which directional button needs to be pressed to block incoming attack

	if enemy.position.x - position.x <= 0:
		return "ui_left"
	else:
		return "ui_right"

func on_attack(_enemy):
	# called on strike frame of enemy attack (damage frame)
	# if block was pressed previously, attack will be blocked, otherwise will deal damage

	if blocking:
		block()

func on_enemy_strike_ready():
	fumble_window_on = true

func on_enemy_strike_ready_end():
	fumble_window_on = false

func on_attack_charged(enemy):
	# called on first frame of attack animation
	# weapon raised
	# calculates position of attacking opponent and opens window for block input

	print("attack_signal recieved from " + enemy.name + " " + str(enemy.get_instance_id()))
	print(calculate_block_direction(enemy))
	block_enabled = true
	block_direction = calculate_block_direction(enemy)

func on_enemy_strike_end():
	fumble = false