extends BaseState
class_name IdleState

@onready var player: Player = owner as Player
@onready var anim: AnimatedSprite2D = player.get_node("AnimatedSprite2D")

func enter(_prev: BaseState) -> void:
	var last_dir: Vector2 = player.last_dir
	if abs(last_dir.x) >= abs(last_dir.y):
		anim.play("idle_right" if last_dir.x > 0.0 else "idle_left")
	else:
		anim.play("idle_down" if last_dir.y > 0.0 else "idle_up")

func physics_update(_delta: float) -> void:
	var dir := Input.get_vector("Left", "Right", "Up", "Down")
	if dir != Vector2.ZERO:
		player.change_state("Move")
