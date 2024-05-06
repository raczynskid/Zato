class_name Player
extends CharacterBody2D

@export
var speed = 400
@export
var hp : int = 3
@onready
var animations = $AnimatedSprite2D
@onready
var playerFX = $PlayerFX
@onready
var state_machine = $StateMachinePlayer
@onready
var hurtbox = $Hurtbox

var orientation = 0

@onready
var debug2 = $Debug2
@onready
var debug3 = $Debug3

func _ready() -> void:
	# Initialize the state machine, passing a reference of the player to the states,
	# that way they can move and react accordingly
	state_machine.init(self)
	Signals.player_hit.connect(on_hit)

func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	$Debug.text = state_machine.current_state.get_name()
	$Debug3.text = str(hp)
	state_machine.process_physics(delta)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)
	
func on_hit():
	state_machine.change_state($StateMachinePlayer/Hit)
