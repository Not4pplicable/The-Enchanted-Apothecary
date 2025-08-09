class_name Player extends CharacterBody2D

@export var moveSpeed: float = 140.0

func _physics_process(delta: float) -> void:
		var dir := Input.get_vector("Left", "Right", "Up", "Down")
		if dir != Vector2.ZERO:
			dir = dir.normalized()
		velocity = dir * moveSpeed
		move_and_slide()
