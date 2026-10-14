extends CharacterBody2D

const gravity = 1200.0

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	move_and_slide()
