class_name Archer
extends CharacterBody2D

@export
var speed = 100
@export
var hp : int = 3
@export
var next_strike_delay_setting : float = 0.1

@onready
var counter_mode : bool = false
@onready
var next_strike_delay := next_strike_delay_setting
@onready
var animations = $AnimatedSprite2D
@onready
var shadow = $Shadow
@onready
var bloodFX = $blood
@onready
var raycast = $RayCast2D
@onready
var raycast_short = $RayCast2D2
@onready
var state_machine = $StateMachineArcher
@onready
var enemyFX = $EnemyFX
@onready
var hitbox = $Hitbox
@onready
var debug = $Debug
@onready
var debug2 = $Debug2

var orientation = 0
@onready
var invulnerable_states = [$StateMachineEnemy/Enter, $StateMachineEnemy/Die, $StateMachineEnemy/Hit]
@onready
var player_target = get_tree().get_nodes_in_group("Player")[0]
var last_hit = null

func _ready() -> void:
	# Initialize the state machine, passing a reference of the player to the states,
	# that way they can move and react accordingly
	state_machine.init(self)
	shadow.reparent(get_tree().get_root().get_node("./App/CanvasGroup"))
	shadow.visible = true
	Signals.player_died.connect(_on_player_death)
	
func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	$Debug.text = state_machine.current_state.get_name()
	$Debug2.text = str(next_strike_delay)
	shadow.global_position = global_position
	shadow.scale.x = scale.y
	state_machine.process_physics(delta)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)

func get_hit(strike_type : String):
	last_hit = strike_type
	if not invulnerable_states.has(state_machine.current_state):
			state_machine.change_state($StateMachineEnemy/Hit)

func _on_player_death():
	state_machine.change_state($StateMachineEnemy/Idle)

func _on_blood_animation_finished():
	bloodFX.visible = false
