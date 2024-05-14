class_name Enemy
extends CharacterBody2D

@export
var speed = 100
@export
var hp : int = 3

@onready
var animations = $AnimatedSprite2D
@onready
var shadow = $Shadow
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
var hitbox = $Hitbox
@onready
var long_hurtbox_collider = $Hurtbox/LongAttackHurtbox
@onready
var short_hurtbox_collider = $Hurtbox/ShortAttackHurtbox
@onready
var debug = $Debug
@onready
var debug2 = $Debug2

var orientation = 0
@onready
var invulnerable_states = [$StateMachineEnemy/Enter, $StateMachineEnemy/Taunt, $StateMachineEnemy/Die, $StateMachineEnemy/Hit]
@onready
var player_target = get_tree().get_nodes_in_group("Player")[0]

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
	$Debug2.text = str(hp)
	shadow.global_position = global_position
	shadow.scale.x = scale.y
	state_machine.process_physics(delta)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)

func get_hit():
	if not invulnerable_states.has(state_machine.current_state):
		state_machine.change_state($StateMachineEnemy/Hit)

func _on_player_death():
	state_machine.change_state($StateMachineEnemy/Idle)
