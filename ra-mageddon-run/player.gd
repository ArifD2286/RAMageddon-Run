extends CharacterBody2D

@export var ram_scene: PackedScene

const gravity = 1200.0

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	move_and_slide()
	if Input.is_action_just_pressed("lay_ram"):
		add_ram()
		
func add_ram():
	var ram = ram_scene.instantiate()
	ram.global_position = global_position + Vector2(0,40)
	get_parent().add_child(ram)
