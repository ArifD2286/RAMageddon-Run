extends Sprite2D

# By having repeat on in CanvasItem > Texture > Repeat, it makes the texture loop without having extra code. 
const scroll_speed = 300.0

func _process(delta: float) -> void:
	# [region_rect] is a slice of the texture that is displayed,
	# moving its position changes the the image in the sprite by sliding it
	region_rect.position.x += scroll_speed * delta
