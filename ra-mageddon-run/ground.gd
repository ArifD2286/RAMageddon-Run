extends Sprite2D

const scroll_speed = 300.0

func _process(delta: float) -> void:
	region_rect.position.x += scroll_speed * delta
