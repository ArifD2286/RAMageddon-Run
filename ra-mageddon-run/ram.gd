extends AnimatableBody2D

const scroll_speed = 300.0

# Line below makes an array or a list in inspector
@export var ram_textures: Array[Texture2D]



func _ready():
	# [pick_random()] is just picking a random item from array
	$Sprite2D.texture = ram_textures.pick_random()


func _physics_process(delta: float) -> void:
	# the line below makes the ram slide to the left at the same speed as the 
	position.x -= scroll_speed * delta
	if global_position.x < -200.0:
		queue_free()
