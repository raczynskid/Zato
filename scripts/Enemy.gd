class_name Enemy
extends CharacterBody2D

@export
var speed = 100
@export
var hp : int = 3

@onready
var animations = $AnimatedSprite2D
@onready
var raycast = $RayCast2D
@onready
var raycast_short = $RayCast2D2
@onready
var state_machine = $StateMachineEnemy
@onready
var enemyFX = $EnemyFX
@onready
var hurtbox = $Hurtbox
@onready
var long_hurtbox_collider = $Hurtbox/LongAttackHurtbox
@onready
var short_hurtbox_collider = $Hurtbox/ShortAttackHurtbox
@onready
var debug = $Debug
@onready

var debug2 = $Debug2
var orientation = 0
var player_target = null

func _ready() -> void:
	# Initialize the state machine, passing a reference of the player to the states,
	# that way they can move and react accordingly
	state_machine.init(self)

func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	$Debug.text = state_machine.current_state.get_name()
	state_machine.process_physics(delta)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)

