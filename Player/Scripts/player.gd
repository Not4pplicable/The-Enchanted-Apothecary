extends CharacterBody2D
class_name Player

@onready var anim: AnimatedSprite2D = $AnimatedSprite2D
@onready var idle_state: BaseState = $States/Idle
@onready var move_state: BaseState = $States/Move

@export var move_speed: float = 140.0
var last_dir: Vector2 = Vector2.RIGHT
var current_state: BaseState = null

func _ready() -> void:
	change_state("Idle")

func _unhandled_input(event: InputEvent) -> void:
	if current_state:
		current_state.handle_input(event)

func _physics_process(delta: float) -> void:
	if current_state:
		current_state.physics_update(delta)

func change_state(state_name: String) -> void:
	var prev := current_state
	if current_state:
		current_state.exit()

	match state_name:
		"Idle":
			current_state = idle_state
		"Move":
			current_state = move_state
		_:
			push_warning("Unknown state: %s" % state_name)
			return

	current_state.enter(prev)
