extends BaseState
class_name MoveState

@onready var player: Player = owner as Player
@onready var anim: AnimatedSprite2D = player.get_node("AnimatedSprite2D")

func enter(_prev: BaseState) -> void:
	_play_anim_for_dir(player.last_dir)

func physics_update(_delta: float) -> void:
	var dir := Input.get_vector("Left", "Right", "Up", "Down")
	if dir == Vector2.ZERO:
		player.change_state("Idle")
		return

	# Move
	player.velocity = dir.normalized() * player.move_speed
	player.move_and_slide()

	# Remember facing & update anim
	player.last_dir = dir
	_play_anim_for_dir(dir)

func _play_anim_for_dir(dir: Vector2) -> void:
	if abs(dir.x) >= abs(dir.y):
		anim.play("walk_right" if dir.x > 0.0 else "walk_left")
	else:
		anim.play("walk_down" if dir.y > 0.0 else "walk_up")
